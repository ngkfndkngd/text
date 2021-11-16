Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :logs, only: [:index,:show, :create, :edit, :update, :destroy]
  resources :recipes do
    resources :reviews, only: [:create, :destroy]
    resources :favorites, only: [:index, :create]
  end
  delete "recipe/:recipe_id/favorite", to: "favorites#destroy" ,as: "recipe_favorite"

end
