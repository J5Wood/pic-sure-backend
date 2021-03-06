Rails.application.routes.draw do
  get '/auto-login' => "session#auto_login"
  post '/session' => "session#login"
  resources :users, only: :create
  resources :posts, only: [:index, :create, :update, :destroy]
  resources :comments, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
