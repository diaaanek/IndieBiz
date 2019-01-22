Rails.application.routes.draw do



  resources :donations
  resources :categories
  resources :reviews
  resources :users
  resources :businesses
root'root#home'

end
