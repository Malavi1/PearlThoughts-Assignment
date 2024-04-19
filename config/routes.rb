# config/routes.rb
Rails.application.routes.draw do
  resources :doctors, only: [:index, :show] do
    resources :availabilities, only: [:index]
    resources :appointments, only: [:create, :show]
  end
  root 'doctors#index'
end
