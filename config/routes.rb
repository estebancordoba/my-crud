# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  resources :posts do
    resources :comments
  end
  resources :users do
    resources :posts
  end
end
