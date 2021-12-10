Rails.application.routes.draw do
  root 'brands#index'
  namespace :api do
    namespace :v1 do
      resources :beverages
      resources :brands
    end
  end
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
