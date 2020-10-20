Rails.application.routes.draw do
  resources :posts

  resources :portfolios

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
