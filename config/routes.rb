Rails.application.routes.draw do
  # Defines routes for incidents
  resources :incidents

  # Define route for health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the root path route ("/")
  root 'pages#home'
end
