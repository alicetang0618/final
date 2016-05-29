Rails.application.routes.draw do

  root 'posts#index'

  resources :datasets
  resources :posts
  resources :users
  resources :comments
  resources :subscriptions

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
