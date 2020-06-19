Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get    '/login',  to: 'sessions#new' 
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessins#destroy'

  resources :topics
  
  get    '/topics', to: 'topics#index'
  
  resources :favorites
  
  get    'favorites/index'
  post   '/favorites', to: 'favorites#create'
  '
  
end
