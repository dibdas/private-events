Rails.application.routes.draw do
  resources :events
  resources :events__skip_collision_checks
  resources :users
  
  
  root to: "events#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
