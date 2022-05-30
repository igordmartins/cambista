Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  resources :tickets
  root to: 'tickets#index'
end
