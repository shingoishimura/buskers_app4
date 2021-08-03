Rails.application.routes.draw do
  get 'spots/index'
  devise_for :users
  root to: "spots#index"
  resources :users, only:[:show]
  resources :spots, only: [:new, :create,:show,:edit,:update,:destroy] do
#  resources :comments, only: [:create]
 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
