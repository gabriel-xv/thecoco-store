Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :dolls, only: [:index, :show] do
    resources :adoptions, only: [:show, :create, :new]
    resources :reviews, only: [:new, :index, :show]
  end
end
