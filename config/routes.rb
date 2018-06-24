Rails.application.routes.draw do
  
  root 'welcome#welcome'
  # get '/auth/facebook/callback' => 'sessions#create'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create'
  
  # get 'sessions/create'
  resources :events do
    resources :organizations
    get 'venues/show'
  end
  
  delete '/signout', to: 'sessions#destroy', as: '/signout'

  
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
