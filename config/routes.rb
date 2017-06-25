Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'toppages#index'
  
  get 'login', to: 'tasks#new'
  post 'login', to: 'tasks#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users
  
  resources :tasks
end