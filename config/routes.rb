Rails.application.routes.draw do
  
  get 'sessions/create'
  get 'events/show'
  get 'events/update'
  get 'events/destroy'
  root 'welcome/home'

  get 'organizations/show'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
