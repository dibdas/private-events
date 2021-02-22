class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    if session[:current_user_id]
      flash[:notice] = 'You are already logged in.'
      return redirect_to users_path
    end
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)

    respond_to do |format|
      if @user.save
        session[:current_user_id] = @user.id

        format.html { redirect_to users_path, notice: 'You are logged in successfully.' }
        format.json { render :show, status: :created, location: @user }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end
