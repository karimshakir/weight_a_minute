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
  {name: 'player4'},
])

Weight.create([
{value: 199, player_id: 1},
{value: 198, player_id: 1},
{value: 197, player_id: 1},
{value: 196, player_id: 1},
{value: 195, player_id: 1},
{value: 215, player_id: 2},
{value: 214, player_id: 2},
{value: 213, player_id: 2},
{value: 212, player_id: 2},
{value: 211, player_id: 2},
{value: 210, player_id: 2},
{value: 209, player_id: 2},
{value: 208, player_id: 2},
{value: 207, player_id: 2},
{value: 206, player_id: 2},
{value: 333, player_id: 3},
{value: 332, player_id: 3},
{value: 331, player_id: 3},
{value: 330, player_id: 3},
{value: 329, player_id: 3},
{value: 328, player_id: 3},
{value: 327, player_id: 3},
{value: 326, player_id: 3},
{value: 325, player_id: 3},
{value: 324, player_id: 3},
{value: 410, player_id: 4},
{value: 409, player_id: 4},
{value: 410, player_id: 4},
{value: 411, player_id: 4},
{value: 412, player_id: 4}
])

Team.create([
  {name: 'team1'},
  {name: 'team2'},
  {name: 'team cardio'},
  {name: 'taste test'},
  {name: 'BMI boyz'},
  {name: 'we skinny'},
  {name: 'don\'t judge'},
  {name: 'calorie killaz'},
  {name: 'salad girls'},
  {name: 'feather weights'},
])

Enrollment.create([
  {player_id: 1, team_id: 1},
  {player_id: 2, team_id: 1},
  {player_id: 3, team_id: 1},
  {player_id: 4, team_id: 1},
  {player_id: 1, team_id: 2},
  {player_id: 3, team_id: 2},
  {player_id: 4, team_id: 2},
  {player_id: 1, team_id: 3},
  {player_id: 2, team_id: 3},
  {player_id: 4, team_id: 3},
  {player_id: 2, team_id: 4},
  {player_id: 3, team_id: 4},
  {player_id: 4, team_id: 4},
])
