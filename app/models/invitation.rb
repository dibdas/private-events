class Invitation < ApplicationRecord
    belongs_to :attendee, class_name: 'User'
    belongs_to :attended_event_id,class_name: "Events"
end
