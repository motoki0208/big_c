Rails.application.routes.draw do
  root 'addictions#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'addictions/search', to: 'addictions#search', as: 'addictions_search'

  resources :stars, only: [:index, :show]
  resources :addictions, only: [:index, :show]
end
