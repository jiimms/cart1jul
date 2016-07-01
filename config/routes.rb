Rails.application.routes.draw do

  devise_for :users

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart/clearCart'
	get '/cart/:id' => 'cart#add'

  root 'products#index'
  resources :products
  
 
end
