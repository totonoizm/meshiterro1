Rails.application.routes.draw do
  root 'post_images#index'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]  #良いねをつけるのと消すだけ！
  end
end
