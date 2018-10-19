Rails.application.routes.draw do
  devise_for :users

  get '/about', to: 'visitors#about'
  get '/services', to: 'visitors#services'
  get '/portfolio', to: 'visitors#portfolio'

  root to: 'visitors#index'
end
