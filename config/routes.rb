Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  resources :tickets do
    resources :orders
  end
  root to: 'tickets#index'
end
