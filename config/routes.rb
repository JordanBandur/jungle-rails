Rails.application.routes.draw do
  root to: 'products#index'

  # Products and Categories
  resources :products, only: [:index, :show]
  resources :categories, only: [:show]

  # Cart
  resource :cart, only: [:show] do
    post :add_item
    post :remove_item
  end

  # Orders
  resources :orders, only: [:create, :show]

  # User authentication routes
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Admin namespace
  namespace :admin do
    root to: 'dashboard#show'
    resources :products, except: [:edit, :update, :show]
    resources :categories, only: [:index, :new, :create]
  end

  # Static Pages
  get '/about', to: 'about#index', as: 'about'
end
