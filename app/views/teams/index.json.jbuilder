json.teams! @teams do |team|
  json.id team.id
  json.name team.name
  json.created_at team.created_at
end
