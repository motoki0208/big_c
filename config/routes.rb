Rails.application.routes.draw do
  root 'stars#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :stars, only: [:index, :show]
end
