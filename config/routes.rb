Rails.application.routes.draw do

  root 'pages#home'
  get 'pages/blogs', to: 'pages#blogs'
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  resources :posts

end
