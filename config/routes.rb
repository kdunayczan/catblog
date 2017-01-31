Rails.application.routes.draw do

  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  resources :posts
  resources :users, except: [:new]
  get 'signup', to: 'users#new'

end
