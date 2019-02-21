Rails.application.routes.draw do

  scope :module => 'buttercms' do
    get '/categories/:slug' => 'categories#show', :as => :buttercms_category
    get '/author/:slug' => 'authors#show', :as => :buttercms_author

    get '/blog/rss' => 'feeds#rss', :format => 'rss', :as => :buttercms_blog_rss
    get '/blog/atom' => 'feeds#atom', :format => 'atom', :as => :buttercms_blog_atom
    get '/blog/sitemap.xml' => 'feeds#sitemap', :format => 'xml', :as => :buttercms_blog_sitemap

    get '/blog(/page/:page)' => 'posts#index', :defaults => {:page => 1}, :as => :buttercms_blog
    get '/blog/:slug' => 'posts#show', :as => :buttercms_post
  end
  resources :testimonials
  resources :teams
  resources :services
  resources :images
  resources :portfolios
  get 'portfolio-video', to: 'images#video', as: "portfolio_video"
  resources :contacts

  devise_for :users
  devise_scope :user do
    # get "/users/sign_up",  :to => "visitors#index"
    get "/admin" => "portfolios#index" # custom path to login/sign_in
  end

  # Public pages
  get '/about', to: 'visitors#about'
  get '/what-we-do', to: 'visitors#services'
  get '/our-work', to: 'visitors#portfolio'
  get '/private/our-work', to: 'visitors#portfolio_protected'

  root to: 'visitors#index'
end
