Rails.application.routes.draw do
  
  root 'welcome#welcome'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  
  get 'sessions/create'
  get 'organizations/show'
  get 'venues/show'
  delete '/signout', to: 'sessions#destroy'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
