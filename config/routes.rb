Rails.application.routes.draw do

  root to: 'offerings#index'
  devise_for :users
  resources :offerings, only: [ :new, :edit, :show, :create, :destroy ]
  resources :offerings do
  end
  resources :bookings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
