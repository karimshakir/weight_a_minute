json.id @player.id
json.player @player.name
json.total_loss @total_loss
json.date @player.created_at.strftime('%m/%d/%Y')
json.weights @player.weights
json.teams @player.teams do |team|
  json.id team.id
  json.name team.name
  json.rank team.my_rank(@player.id)
end
