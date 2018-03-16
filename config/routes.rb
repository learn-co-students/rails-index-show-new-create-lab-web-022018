Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :edit, :create, :new]
end
