Rails.application.routes.draw do
  resources :user_offender_records
  resources :offender_records
  resources :arrest_records
  resources :states
  resources :user_states
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
