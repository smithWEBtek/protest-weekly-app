Rails.application.routes.draw do
  
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'
  # get '/auth/facebook/callback' => 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  root 'welcome#welcome'
  
  # get '/auth/facebook/callback' => 'sessions#create'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create'
  
  # get 'sessions/create'
  resources :organizations 

  resources :events
  
  delete '/signout', to: 'sessions#destroy', as: '/signout'

  resources :users

  resources :venues

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
