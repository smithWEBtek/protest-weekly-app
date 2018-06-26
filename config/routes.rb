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
  delete '/signout', to: 'sessions#destroy', as: '/signout'
  # get 'sessions/create'
  
  get '/organizations/:organization_id/events', to: 'events#index', as: '/events'
  post '/organizations/:organization_id/events', to: 'events#create', as: '/event'

  resources :organizations do
    resources :events, only: [:show, :new]
  end

  resources :users
  
  resources :event_users


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
