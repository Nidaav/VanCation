Rails.application.routes.draw do
  get 'rents/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vans do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index] do
    # resources :reviews, only: %i[new create]
    member do
      patch :accept
      patch :cancel
      patch :decline
    end
    resources :rents, only: %i[index]
  end
end
