Rails.application.routes.draw do
  root "home#index"
  get 'home/about'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
