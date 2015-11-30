Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'devise_custom/registrations' }
  resources :posts
  resources :users

  root to: 'pages#index'
end
