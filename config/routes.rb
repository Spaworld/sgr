Rails.application.routes.draw do
  root to: 'static#index', as: 'home'
  resources :brands do
    resources :products
  end
  resources :products, only: [:index]
end
