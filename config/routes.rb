Rails.application.routes.draw do
  devise_for :users
  root to: 'bike_offers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bike_offers
  get "/all_my_bikes", to: "bike_offers#all_my_bikes"
end
