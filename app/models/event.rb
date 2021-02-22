class Event < ApplicationRecord
    has_many :enrollements
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    scope :past_events, ->{where('date < ?', date.today)}
    scope :upcoming_events, ->{where('date >=?',date,today)}
end
