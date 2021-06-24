Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/states/:abbreviation", to: "states#find_me_state"
  resources :saved_records
  resources :favorite_states
  resources :users 
  resources :states
  resources :offender_records
  # resource :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
