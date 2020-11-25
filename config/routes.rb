Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/login', to: 'users#login'
  get '/quiz', to: 'pages#quiz'
  get '/dashboard', to: 'pages#dashboard'
  get '/new_user_mood', to: 'pages#new_user_mood'
  resources :goals, only: [:create], to: 'pages#save_goal'
  get '/goals', to: 'pages#home'
end
