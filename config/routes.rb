Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :dolls, only: [:index, :show] do
    resources :reviews
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
