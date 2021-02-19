class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :events, :foreign_key => "creator_id", :class_name => "Event"
         has_many :invitations
         has_many :attended_events, through: :invitation, source: :event
end
