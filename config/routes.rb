Rails.application.routes.draw do
  

  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')

  # get '/auth/facebook/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')


  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
 
  root 'welcome#welcome'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create' 

  get '/auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  get '/events/id/happenings/new', to: 'happenings#new'
   post '/events/id/happenings/new', to: 'happenings#create'

  delete '/signout', to: 'sessions#destroy', as: '/signout'
   
  resources :organizations do
    resources :events
  end

  resources :users

  resources :events

  resources :events do
    resources :happenings, only: [:new, :index, :show, :edit]
  end
  

          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
