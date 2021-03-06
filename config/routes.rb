Rails.application.routes.draw do

  root to: 'root#home'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # get 'sessions/new'

  get 'signup'=> "users#new", as: 'signup'

  get '/login', to: 'sessions#new', as: 'login'
    # get '/login', :to => 'sessions#login', as: 'login'
  post '/login/', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'
  #
  #
  # get ‘signup’, to: ‘users#new’, as: ‘signup’
  # get ‘login’, to: ‘sessions#new’, as: ‘login’
  # get ‘logout’, to: ‘sessions#destroy’, as: ‘logout’

#
# get 'heartbeat' => "custom_controller#heartbeat"
  resources :donations

  get 'donations/new', to: 'donations#new'
  post 'users/:id/clear', to: 'users#remove_my_donations'

  resources :reviews
  resources :businesses



end
