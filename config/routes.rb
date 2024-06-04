Rails.application.routes.draw do
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show]
  end
  resources :bookings, only: [:index, :create, :show, :update] do
    member do
      get :cancel_booking
    end
  end
end
