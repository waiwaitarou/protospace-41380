Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :comments, only: :create
  resources :users, only: :show
  resources :prototypes do
    resources :comments, only: :create
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
