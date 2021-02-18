# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  resources :gym_rats
  resources :blood_sugar_levels
  resources :workouts

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
