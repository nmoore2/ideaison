Rails.application.routes.draw do
  resources :services
  resources :images
  resources :portfolios
  get 'portfolio-video', to: 'images#video', as: "portfolio_video"
  resources :contacts

  devise_for :users

  get '/about', to: 'visitors#about'
  get '/what-we-do', to: 'visitors#services'
  get '/our-work', to: 'visitors#portfolio'

  root to: 'visitors#index'
end
