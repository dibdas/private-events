class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User',foreign_key: 'attendee_id'
    has_many :attendees, through: :invitation, source: :User
    scope :past, ->{where('date < ?', Date.today)}
    scope :upcoming, ->{where('date>=?', Date.today)}
end
