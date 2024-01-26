Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get '/user/cancel_registration', to: 'custom_registrations#cancel_registration', as: :cancel_registration


  root 'home#index'
  get '/wallet', to: 'wallet#index', as: 'wallet'
  resources :profiles, only: [:update, :show]
end
