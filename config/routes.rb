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
  

  resources :organizations do
    resources :events, only: [:index, :create, :new, :edit, :show, :update]
  end

  resources :users, :events do
    resources :event_users, only: [:index, :create, :new, :edit, :show, :update]
  end

  post '/users/event_users/create', to: 'users#event_users#create'
  get '/users/event_users/new', to: 'event_users#create'

  # get '/new/users/event_users', to: 'event_users#new', as: '/users/event_users/new'
  # post '/user/event_users', to: 'event_users#create'

        # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
