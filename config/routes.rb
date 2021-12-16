Rails.application.routes.draw do
  root "reservations#index"
  get "list", to: "reservations#list"

  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
