Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root to: 'products#index' , via: :get
  resources :products
  resource :cart, only: [:show] do 
    post "add" , path: 'add/:id'
    get "checkout"
  end
  resources :orders , only: [:index, :show ,:create] do
    member do
      get :new_payment
      post :pay
    end
  end
end
