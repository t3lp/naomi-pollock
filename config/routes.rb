Rails.application.routes.draw do
  resources :articles
  resources :books
  resources :photos
  resources :posts
  resources :users

  get 'home' => 'home#welcome', as: :home
  get 'about' => 'home#about', as: :about

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'home#welcome'


end
