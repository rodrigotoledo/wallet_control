Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root 'home#index'
  get '/wallet', to: 'wallet#index', as: 'wallet'
  resources :profiles, only: [:update, :show]
end
