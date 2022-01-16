Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'search/index'
  devise_for :users, controllers: {sessions: "sessions"}
  resources :users, only: [:show, :edit, :update]

  resources :posts, only: [:new, :create, :show, :destroy]
  
  get 'home/index'

  get 'search' => 'search#index'
  
  root to: 'home#index'
end
