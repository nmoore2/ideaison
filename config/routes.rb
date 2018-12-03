Rails.application.routes.draw do
  resources :testimonials
  resources :teams
  resources :services
  resources :images
  resources :portfolios
  get 'portfolio-video', to: 'images#video', as: "portfolio_video"
  resources :contacts

  devise_for :users

  # Public pages
  get '/about', to: 'visitors#about'
  get '/what-we-do', to: 'visitors#services'
  get '/our-work', to: 'visitors#portfolio'
  get '/blog', to: 'visitors#blog'
  get '/private/our-work', to: 'visitors#portfolio_protected'

  root to: 'visitors#index'
end
