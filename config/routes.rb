Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :galleries, only: [:index, :create, :destroy]
  resources :registrations, only: :create
  resources :retreat, only: :index
  resources :about, only: :index

  get 'home/index'
  root to: 'home#index'
end
