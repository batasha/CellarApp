CellarApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match 'register', to: 'users#new'
  match 'login', to: 'sessions#new'
  match 'logout', to: 'sessions#destroy'

  root to: 'wines'
end
