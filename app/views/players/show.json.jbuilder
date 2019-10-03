json.id @player.id
json.player @player.name
json.teams @player.teams
json.total_loss @total_loss
json.date @player.created_at.strftime('%m/%d/%Y')
json.weights @player.weights

