Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products
  get '/products/:id/body' => 'products#body'
  get '/products/:id/inventory' => 'products#inventory'
end
