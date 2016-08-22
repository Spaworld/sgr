Rails.application.routes.draw do
  root to: 'static#index', as: 'home'
  resources :brands
end
