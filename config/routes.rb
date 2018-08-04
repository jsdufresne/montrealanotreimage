Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"

  #devise_for :users,
   #   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :user, only: [:show, :index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
