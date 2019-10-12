Rails.application.routes.draw do
  root controller: :cocktails, action: :index
  resources :cocktails, only: [:index]
  resources :charges, only: [:new, :create]
  devise_for :users
end
