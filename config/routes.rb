Rails.application.routes.draw do
  root to: 'pages#home'
  resources :movieboxes
  resources :users
  resources :movies
  resources :movie_genres
  resources :listings
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
