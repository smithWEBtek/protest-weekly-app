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
    resources :events, only: [:new, :create, :show, :index]
  end

  resources :organizations
  
  resources :events
#index: organization_events_path; new_organization_event_path; 
#edit_organization_event_path; show organization_event_path
  resources :events, :users do
    resources :event_users, only: [:new, :create, :show, :index]
  end

  resources :users
  
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
