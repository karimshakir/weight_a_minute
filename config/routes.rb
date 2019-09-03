Rails.application.routes.draw do
  get 'weight/index'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  root 'application#hello_world'
  resources :player, :team, :weight, :enrollment

  post "/sessions" => "sessions#create"


end
