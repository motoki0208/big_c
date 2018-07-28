Rails.application.routes.draw do
  root 'stars#index'
  post   '/like/:star_id' => 'likes#like',   as: 'like'
  delete '/like/:star_id' => 'likes#unlike', as: 'unlike'
  get '/like_detail' => 'stars#like_detail', as: 'like_detail'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :stars, only: [:index, :show]
end
