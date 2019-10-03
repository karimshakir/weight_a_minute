Rails.application.routes.draw do

# custom routes
  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"

  get '/rank/:teamId' => 'players#player_ranking'
  get "/availableTeams" =>'teams#indexAvailable'
  get '/selectedTeam/:id' => 'teams#selectedTeam'

# RESTful routes
  resources :players, :teams, :weights, :enrollments

end
