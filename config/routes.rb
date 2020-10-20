Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users do 
    resources :movieboxes 
    resources :movies, only: [:index]
  end
  
  resources :movieboxes
  resources :listings, only: [:destroy]
  resources :movies do 
    resources :listings, except: [:index, :destroy]
  end


  resources :genres, only: [:index, :show] do 
    resource :movies, except: [:show]
  end
  
  get '/genres/:id/movies', to: "genres#show"
  get '/auth/google/callback', to: 'users#google_login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
