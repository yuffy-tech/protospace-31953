Rails.application.routes.draw do
  get 'prototypes/index'
  devise_for :users
  root to: "prototypes#index"
   resources :comments, only: :create 
   resources :prototypes do
   resources :comments, only: :create
   end
   resources :users, only: :show
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'prototypes/index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end