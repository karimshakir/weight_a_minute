Rails.application.routes.draw do

# custom routes
  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"

  get "/rank/:teamId" => 'players#rank'
  get "/availableTeams" =>'teams#indexAvailable'


# RESTful routes
  resources :players, :teams, :weights, :enrollments

end
