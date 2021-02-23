module ApplicationHelper
  def show_events(event)
  if event.attendees.size.positive?
  render '/events/show_events', event: event
  else
  render '/events/no_events'
end
  end
end
