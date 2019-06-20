Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pages, only: :show do
  resources :projects, only: [:index, :show]
  end
end
