Rails.application.routes.draw do
  root to: 'products#index' , via: :get
  resources :products
  resource :cart, only: [:show] do 
    post "add" , path: 'add/:id'
  end
end
