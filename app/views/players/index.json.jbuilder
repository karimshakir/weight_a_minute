json.array! @players do |player|
  # json.id player.id
  # json.name player.name
  # json.created_at player.created_at

  # json.array! player.teams do |team|
  #   json.team player.team
  # end
  json.array! player.weights do |weight|
    # json.weight player.weight
    json.weightlost player.weight.weightlost
  end

end
