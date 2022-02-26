Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  # devise_for :installs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :admin do
    root to: "home#index"
    resources :admins
    resources :products
  end

  root to: "product/products#index"

  namespace :user do
    resources :products
  end

  namespace :product do 
    resources :products
  end

end