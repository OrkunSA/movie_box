Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users do 
    resources :movieboxes 
    resources :movies, only: [:index]
  end
  
  resources :movieboxes
  resources :movies
  resources :movie_genres
  resources :listings
  resources :genres

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
