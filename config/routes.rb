Rails.application.routes.draw do

  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  resources :posts
  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
