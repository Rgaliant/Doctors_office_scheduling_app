Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/new'
root 'patients#index'

  resources :patients
  resources :physicians do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end