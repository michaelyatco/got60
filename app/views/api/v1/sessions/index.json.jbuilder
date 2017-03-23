json.array! @sessions.each do |session|
  json.id session.id
  json.latitude session.latitude
  json.longitude session.longitude
end