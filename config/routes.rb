Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end

#Rails.application.routes.draw do
#  get 'sessions/new'
#  get 'sessions/create'
#  get 'sessions/destroy'
#  get 'users/index'
#  get 'users/show'
#  get 'users/new'
#  get 'users/create'
#  root to: 'tasks#index'
#  
#  get 'signup', to: 'users#new'
#  resources :users, only: [:index, :show, :create]
#end