Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :articles , only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :avatars, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :teams, only: [:index]
  resources :categories
  get    '/mentions'      => 'pages#mentions'
end
