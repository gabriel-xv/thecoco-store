Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :dolls do
    resources :reviews
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
