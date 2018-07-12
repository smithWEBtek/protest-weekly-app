Rails.application.routes.draw do
  
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  
  root 'welcome#welcome'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create' 

  get '/auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete '/signout', to: 'sessions#destroy', as: '/signout'
   

  resources :organizations do
    resources :events, only: [:index, :create, :new, :edit, :show, :update]
  end

  resources :users, :events do
    resources :event_users, only: [:index, :create, :new, :edit, :show, :update]
  end

  get '/users/:id/event_users/new', to: 'event_users#create'
  post '/users/:id/event_users/new', to: "event_users#create"
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
