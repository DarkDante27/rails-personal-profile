Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pages, only: :show

  resources :projects, only: [:show]
end
