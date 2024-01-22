Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  authenticated :user do
    root 'wallet#index', as: :authenticated_root
  end

  unauthenticated do
    root 'welcome#index', as: :unauthenticated_root
  end

  get '/welcome', to: 'welcome#index', as: 'welcome'
  root 'wallet#index'
  get '/profile', to: 'profiles#show', as: 'profile'
  post '/profile', to: 'profiles#create', as: 'create_profile'
  patch '/profile', to: 'profiles#update', as: 'update_profile'
  
end
