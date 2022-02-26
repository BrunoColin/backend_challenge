Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  # devise_for :installs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :admin do
    root to: "home#index"
    resources :admins
  end

end
