class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
 
  def index
    @users = User.all
  end

  def show; end


  def create
    @user = User.newy(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to users_path
      else
        flash[:registered_errors] = user.errors.full_messages
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
