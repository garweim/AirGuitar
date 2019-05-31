Rails.application.routes.draw do

  root to: 'offerings#index'
  devise_for :users

  resources :offerings, only: [ :new, :edit, :show, :create, :destroy ] do
    resources :bookings, only: [:create, :edit, :update]
  end
  resources :bookings, only: [:index, :destroy ] do
    collection do
      get 'gigs'
    end
  end


  # resources :offerings do
  # end
  #resources :bookings


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
