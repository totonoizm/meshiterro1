Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]  #良いねをつけるのと消すだけ！
  end
  resources :users, only: [:show]
end
