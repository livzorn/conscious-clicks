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

  resources :user_message_sets, only: [:new, :create]
  resources :user_moods, only: [:new, :create]
  resources :user do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:edit, :destroy]
  resources :message_sets, only: [:new, :create, :edit, :update, :destroy] do
    post '/add_one', to: 'user_message_sets#add_one'
    patch "publish", to: "message_sets#publish", on: :member
    delete '/take_one', to: 'user_message_sets#take_one'
  end

  # get '/community', to: 'message_sets#edit'
end
