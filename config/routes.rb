Rails.application.routes.draw do
  
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  

  root 'welcome#welcome'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/session', to: 'sessions#create' 

  get '/auth/facebook/callback', to: 'sessions#facebook'
  get '/auth/facebook', to: 'sessions#facebook'
  get 'auth/failure', to: redirect('/')

  delete '/signout', to: 'sessions#destroy', as: '/signout'

  get '/events/last_added', to: 'events#last_added'
  get '/events/past_events', to: 'events#past_events'
   
  resources :organizations do
    resources :events
  end

  resources :events do
    resources :happenings 
  end

  resources :users do
    resources :happenings
  end

  


            # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
