Rails.application.routes.draw do
  root 'stars#index'
  resources :stars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
