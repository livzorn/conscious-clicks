Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'
  get '/landing', to: 'pages#landing'
  get '/login', to: 'users#login'
  get '/quiz', to: 'pages#quiz'
  get '/dashboard', to: 'pages#dashboard'
  get '/community', to: 'pages#community'

  resources :goals, only: [:create], to: 'pages#save_goal'
  get '/goals', to: 'pages#home'
  get '/', to: 'pages#new_message', as: :new_message
  get '/refresh_message', to: 'pages#refresh_message', as: :refresh_message

  resources :user_message_sets
  resources :user_moods, only: [:new, :create]
  resources :user do
    resources :bookmarks, only: [:new, :create]
    resources :message_sets, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :bookmarks, only: [:edit, :destroy]
end
