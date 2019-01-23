Rails.application.routes.draw do

  root'root#home'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'sessions/new'

  get '/login', :to => 'sessions#new'
    # get '/login', :to => 'sessions#login', as: 'login'
  post '/login/', :to => 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'
  get 'signup'=> "users#new"

  # get ‘signup’, to: ‘users#new’, as: ‘signup’
  # get ‘login’, to: ‘sessions#new’, as: ‘login’
  # get ‘logout’, to: ‘sessions#destroy’, as: ‘logout’

  resources :donations
  resources :categories
  resources :reviews

  resources :businesses



end
