Rails.application.routes.draw do
  authenticated :user do
    root to: "dashboard#index" , as: "authenticated_root"
  end

  root to: "home#index"

  # We hit this path when we log out
  get "users", to: redirect("/")

  devise_for :users
end