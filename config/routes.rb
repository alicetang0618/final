Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  root 'posts#index'

  resources :datasets
  resources :posts
  resources :users
  resources :comments
  resources :subscriptions

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :password_resets, only: [:new, :create, :edit, :update]

end
