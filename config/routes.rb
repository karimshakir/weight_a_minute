Rails.application.routes.draw do
  get 'weight/index'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"


  resources :players, :teams, :weights, :enrollments

  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"

  get "/weights/id" =>"weights#show"
  get "/weights" =>"weights#index"


end
