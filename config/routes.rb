Rails.application.routes.draw do
  root "brands#index"
  resources :beverages
  resources :categories
  resources :brands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
