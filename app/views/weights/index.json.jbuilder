json.array! @weights do |weight|
  json.id weight.id
  json.value weight.value
  json.player_id weight.player_id
  json.date weight.created_at.strftime('%m/%d/%Y')
end



