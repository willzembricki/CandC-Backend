Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/states/:abbreviation", to: "states#find_me_state"
  resources :user_offender_records
  resources :offender_records
  resources :arrest_records
  resources :states
  resources :user_states
  resource :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
