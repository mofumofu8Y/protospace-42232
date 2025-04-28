Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create 
  end
  
end