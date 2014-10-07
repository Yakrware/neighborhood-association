Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  devise_for :neighbors

  # mostly admin stuff
  resources :advertisements
  resources :features
  resources :links

  devise_for :users
end
