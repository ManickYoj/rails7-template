Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "splash#index"
  get "/splash", to: "splash#index"
  get "/dashboard", to: "dashboard#index"
  # resources "users"
  devise_for :users
end
