Rails.application.routes.draw do
  devise_for :users 
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'

  resources :gyms 
  resources :bookings, only:[:new, :create, :index]
end
  # For future implementaiton admin access only  
  # resources :bookings, only:[:delete, :update, :edit, :destroy] 
