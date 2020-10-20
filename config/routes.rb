Rails.application.routes.draw do
  resources :posts

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
