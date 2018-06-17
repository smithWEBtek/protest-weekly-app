Rails.application.routes.draw do
  
  get 'events/show'
  get 'events/update'
  get 'events/destroy'
  # root '/'

  get 'organizations/show'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
