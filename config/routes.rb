Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"

  get "/recipes", to: "recipes#index"
  get "recipes/:id", to: "recipes#show"
end
