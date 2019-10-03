json.array! @output do |player|
  json.id player.id
  json.name player.name
  json.wt_loss player.wt_loss
  json.date player.created_at.strftime('%m/%d/%Y')

  end
