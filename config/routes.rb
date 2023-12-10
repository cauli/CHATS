Rails.application.routes.draw do
  resources :messages
  resources :room_users
  resources :users
  resources :rooms do
    resources :messages, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Authentiation routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: :destroy_session # this should be a delete request to avoid CSRF attacks, but I couldn't get it to work using `<%= link_to 'Logout', destroy_session_path, method: :delete %>`
  
  # Defines the root path route ("/")
  root "rooms#index"
end
