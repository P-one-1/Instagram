Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {sessions: "sessions"}
  resources :users, only: [:show, :edit, :update]

  resources :posts, only: [:new, :create, :show, :destroy]
  
  get 'home/index'

  get 'search' => 'search#index'
  
  devise_scope :user do
    root to: 'sessions#new'
  end
end
