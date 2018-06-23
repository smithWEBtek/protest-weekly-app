Rails.application.routes.draw do
<<<<<<< HEAD
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
=======
  get '/auth/facebook/callback' => 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

>>>>>>> a04549980a52157c26bb7dcdeae8bc4c97412992
  root 'welcome#welcome'
  
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create'
  
  # get 'sessions/create'
  get 'organizations/show'
  get 'organizations/new'
  post 'organizations/create'
  get 'venues/show'
  # delete '/signout', to: 'sessions#destroy'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
