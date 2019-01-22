Rails.application.routes.draw do

  root'root#home'


  get '/login', :to => 'sessions#new', :as => :login
  get '/logout', to: 'sessions#destroy'

  resources :donations
  resources :categories
  resources :reviews
  resources :users
  resources :businesses

  resources :sessions, only: [:create]

end
