Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :comments
  end
  devise_for :users
  # get 'home/index'
  # root 'home#index'
  root to: "home#index"
  get 'search', to: 'search#index'
  # get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end