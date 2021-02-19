class Event < ApplicationRecord
    belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"
    has_many :attendees, foreign_key: :attended_event_id
    scope :past_events, -> {where('date < ?', Date.today)}
    scope :upcoming_events, ->{where('date>=?', Date.today)}
end
