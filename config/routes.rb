Rails.application.routes.draw do
  resources :images
  resources :portfolios
  get 'portfolio-video', to: 'images#video', as: "portfolio_video"
  resources :contacts

  devise_for :users

  get '/about', to: 'visitors#about'
  get '/services', to: 'visitors#services'
  get '/portfolio', to: 'visitors#portfolio'

  root to: 'visitors#index'
end
