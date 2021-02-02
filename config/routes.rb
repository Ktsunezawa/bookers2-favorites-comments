Rails.application.routes.draw do
  get 'relationships/index'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  resources :books do
   resource :favorites, only: [:create, :destroy]
   resources :comments, only: [:create, :destroy]
  end
end