Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "places#index"
  resources :places
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
end
