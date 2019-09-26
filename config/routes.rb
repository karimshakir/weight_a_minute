Rails.application.routes.draw do

# custom routes
  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"
  get "/enrollments/:id" => "enrollments#show"

  get "/rank" => 'weights#rank'


# RESTful routes
  resources :players, :teams, :weights, :enrollments

end
