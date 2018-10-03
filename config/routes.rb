Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'visitors#index'

  # root to: 'visitors#index'
end
