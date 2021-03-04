Rails.application.routes.draw do
  resources :authors_books
  resources :order_detalis
  resources :orders
  resources :users
  resources :books
  resources :categaries
  resources :publishers
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
