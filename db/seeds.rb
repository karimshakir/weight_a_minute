# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create([
  {name: 'player1'},
  {name: 'player2'},
  {name: 'player3'},
  {name: 'player4'}
])

Weight.create([
{value: 105, player_id: 1},
{value: 104, player_id: 1},
{value: 103, player_id: 1},
{value: 102, player_id: 1},
{value: 101, player_id: 1},
{value: 105, player_id: 2},
{value: 104, player_id: 2},
{value: 103, player_id: 2},
{value: 102, player_id: 2},
{value: 101, player_id: 2},
{value: 105, player_id: 2},
{value: 104, player_id: 2},
{value: 103, player_id: 2},
{value: 102, player_id: 2},
{value: 101, player_id: 2}
])

Team.create([
  {name: 'team1'},
  {name: 'team2'}
])

Enrollment.create([
  {player_id: 1, team_id: 1},
  {player_id: 2, team_id: 1},
  {player_id: 3, team_id: 2},
  {player_id: 4, team_id: 2},
])
