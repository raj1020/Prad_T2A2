Rails.application.routes.draw do
  devise_for :eaters
=begin
  resources :cooks_foods
  resources :drivers
  resources :images
  resources :foods
  resources :cooks
=end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/", to: "pages#home", as: "root"
get "/posts", to: "pages#options", as: "option"
get "/posts/authenticate", to: "pages#authenticate", as: "auth" 
get "/posts/guest", to: "pages#guest", as: "guest"

end
