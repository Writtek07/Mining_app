Rails.application.routes.draw do
  resources :departments
  root 'home#index'
  resources :home
  # post 'home/index', to: "home#create"
  
  # patch 'home/index/:id', to: "home#update"
  # delete 'home/index/:id', to: "home#destroy"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
