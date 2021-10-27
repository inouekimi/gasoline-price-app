Rails.application.routes.draw do
  get 'prices/index'
  root to: "prices#index"
  devise_for :users
  resources :comments, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :prices, only: :index
end
