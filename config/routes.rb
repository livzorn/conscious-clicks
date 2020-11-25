Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/landing', to: 'pages#landing'
  get '/login', to: 'users#login'
  get '/quiz', to: 'pages#quiz'
  get '/dashboard', to: 'pages#dashboard'
  resources :user_message_sets
  resources :user_moods, only: [:new, :create]
  resources :user do
    resources :bookmarks, only: [:new, :create]
  end
  resource :bookmarks, only: [:edit, :destroy]
end
