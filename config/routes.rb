Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Root page about page
  root 'pages#home'
  get 'about',to: 'pages#about'
  # Sign up page
  get 'signup',to: 'users#new'

  # Create sessiong
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'

  # Users and articles papge
  resources :users, except: [:new]
  resources :articles
end
