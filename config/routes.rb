Rails.application.routes.draw do
  resources :cooks_foods
  resources :drivers
  resources :images
  resources :foods
  resources :cooks
  resources :eaters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
