Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses

  resource :registrations, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
end
