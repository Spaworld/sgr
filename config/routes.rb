Rails.application.routes.draw do
  root to: 'static#index', as: 'home'
  get '/about' => 'static#about'
  resources :brands do
    resources :products
  end
  resources :products, only: [:index, :show]
  resources :articles, only: [:index, :show]
end
