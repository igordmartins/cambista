Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  resources :tickets do
    resources :orders, only: %i[new create]
  end
  root to: 'tickets#index'

  resources :orders, only: %i[index]
end
