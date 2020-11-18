Rails.application.routes.draw do

  # devise_for :users
  
  root to: "home#index"

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :classrooms
  resources :lessons
  resources :profiles
  resources :bookeds

  post 'bookeds/lessons/:id', to: 'bookeds#create', as: 'booked_lesson'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
