Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'redis/index'
  resources :posts

  # get 'sessions/new'
  # get 'users/new'
  root 'posts#index'
  # get '/signup', to: 'users#new'

  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  resources :users

  # get "redis", to: "redis#index"
end
