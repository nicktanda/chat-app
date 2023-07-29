Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/login", to: "sessions#new", as: "new_session"
  post "/login", to: "sessions#create", as: "create_session"
  get "/logout", to: "sessions#destroy", as: "destroy_session"

  root to: "channels#index"
  get "/:channel_id", to: "channels#show", as: "show_channels"
end
