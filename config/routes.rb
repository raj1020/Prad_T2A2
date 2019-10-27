Rails.application.routes.draw do
=begin
  resources :cooks_foods
  resources :drivers
  resources :images
  resources :foods
  resources :cooks
  resources :eaters
=end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/", to: "pages#home", as: "root"

end
