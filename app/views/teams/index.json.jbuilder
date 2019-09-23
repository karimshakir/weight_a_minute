json.array! @players do |player|
  json.id player.id
  json.name player.name
  json.created_at player.created_at
end
