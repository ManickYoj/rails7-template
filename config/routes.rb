Rails.application.routes.draw do
  root to: "home#index"
  # Workaround because something about Rails 7 (Turbo) doesn't seem to play
  # well with Devise's after_sign_out_path_for; it completely ignores it.
  # Instead, it always redirects to users_url, so we just point that back
  # to the home. However, that prevents us from having a user index page,
  # which we may well want!
  get "users", to: "home#index"

  get "/dashboard", to: "dashboard#index"
  devise_for :users
  devise_for :admins
end
