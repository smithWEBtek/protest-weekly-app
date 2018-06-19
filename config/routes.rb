Rails.application.routes.draw do
  
  root 'welcome/home'
  
  get 'sessions/create'
  get 'organizations/show'
  get 'venues/show'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
