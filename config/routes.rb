Rails.application.routes.draw do
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show]
  end
  resources :bookings, only: [:create, :show, :update, :destroy]
end
