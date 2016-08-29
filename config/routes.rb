Rails.application.routes.draw do
  resources :products
  resources :searches
  root 'products#index'
     
end
