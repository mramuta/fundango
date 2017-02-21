Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  resources :auditoriums, only: [:new, :create,:index]
  resources :shows, only: [:new, :create, :destroy]
  resources :showtimes, only: [:new, :create]
  root 'shows#index'
  resources :shows, only: :show do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:index]
end
