json.array! @players do |player|
  json.id player.id
  json.name player.name
  json.created_at player.created_at

  json.array! @players do |player|
    json.team player.team
  end
end
