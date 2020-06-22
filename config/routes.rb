# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "static_pages#home"

  devise_for :accounts, :controllers => { sessions: 'sessions', registrations: 'registrations' }
  post 'authenticate', to: 'authentication#authenticate'

  resources :products
end
