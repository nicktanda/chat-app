Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "new_session"
  post "/login", to: "sessions#create", as: "create_session"
  get "/logout", to: "sessions#destroy", as: "destroy_session"

  root "channels#index"
  # get "/:channel_id", to: "channels#show", as: "show_channels"

  resources :channels, only: [:show], path: '/' do
    resources :messages, only: [:create]
  end
end
