Rails.application.routes.draw do


  namespace :admin do
    get 'dashboard' => 'dashboard#dashboard', as: :dashboard
  end

  resources :articles
  resources :books
  resources :photos
  resources :posts
  resources :users
  resources :essays
  resources :lectures

  get 'home' => 'home#welcome', as: :home
  get 'about' => 'home#about', as: :about

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out

  root 'books#index'


end
