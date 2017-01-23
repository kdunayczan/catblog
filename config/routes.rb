Rails.application.routes.draw do

  root 'pages#home'
  get 'blogs/about', to: 'blogs#about'
  get 'blogs/contact', to: 'blogs#contact'
  resources :blogs

end
