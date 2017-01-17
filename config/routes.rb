Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'new', to: 'new#pages'
  get 'add', to: 'add#pages'
  get 'show', to: 'show#pages'

end
