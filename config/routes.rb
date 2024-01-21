Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'wallet#index', as: :authenticated_root
  end

  unauthenticated do
    root 'welcome#index', as: :unauthenticated_root
  end

  get '/welcome', to: 'welcome#index', as: 'welcome'
  root 'wallet#index'
end
