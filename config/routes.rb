Rails.application.routes.draw do
  root 'addictions#index'  
  post   '/like/:addiction_id' => 'likes#like',   as: 'like'
  delete '/like/:addiction_id' => 'likes#unlike', as: 'unlike'
  get 'like_detail' => 'addictions#like_detail', as: 'like_detail'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stars, only: [:index, :show]
  resources :addictions, only: [:index, :show]
  resources :likes, only: [:index]
end
