
json.array! @events do |event|
  json.id event.id
  json.title event.title
  json.introduction event.introduction
  json.date event.date
  json.user event.user
  json.restaurant event.restaurant
  json.attendants do
    json.array! event.attendants, :user, :event
  end
end
