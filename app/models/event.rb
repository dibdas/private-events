class Event < ApplicationRecord
<<<<<<< HEAD
  belongs_to :creator, class_name: 'User'

  has_many :event_attendances, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, through: :event_attendances, source: :attendee

  validates :name, :event_date, presence: true

  delegate :name, to: :creator, prefix: true

  scope :past, -> { where('event_date < ?', Time.zone.now) }
  scope :upcoming, -> { where('event_date >= ?', Time.zone.now) }
=======
    belongs_to :creator, class_name: 'User',foreign_key: 'attendee_id'
    has_many :attendees, through: :invitation, source: :User
    scope :past, ->{where('date < ?', Date.today)}
    scope :upcoming, ->{where('date>=?', Date.today)}
>>>>>>> 98e6c3aac0e58af578f838c88953813d3ed68f59
end
