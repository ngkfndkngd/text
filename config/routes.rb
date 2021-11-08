Rails.application.routes.draw do
  root  "homes#top"
  devise_for :users
  resources :users, only: [:show,:edit,:update]
  resources :logs, only: [:index,:create,:edit,:update,:destroy]
  resources :recipes do
    resources :reviews, only: [:create,:destroy]
    resources :favorites,only: [:index,:create,:destroy]
  end
  
  
end
