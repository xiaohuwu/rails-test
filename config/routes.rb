Rails.application.routes.draw do
  resources :welcome
  resources :users
  resources :posts

  root 'posts#index'
end
