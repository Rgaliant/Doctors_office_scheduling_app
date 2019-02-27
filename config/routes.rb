Rails.application.routes.draw do
  devise_for :users
  get 'appointments/index'
  get 'appointments/new'
root 'patients#index'

  resources :patients
  resources :physicians do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
