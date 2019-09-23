Rails.application.routes.draw do

  resources :players, :teams, :weights, :enrollments

  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"

end
