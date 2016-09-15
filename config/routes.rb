Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index' , via: :get
  resources :products
  resource :cart, only: [:show] do 
    post "add" , path: 'add/:id'
    get "checkout"
  end
  resources :orders , only: [:index, :show ,:create]
end
