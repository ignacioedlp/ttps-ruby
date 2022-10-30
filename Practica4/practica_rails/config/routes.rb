Rails.application.routes.draw do
  resources :offices , only: [:index, :new, :create, :show, :update, :edit]
  resources :employees , only: [:index, :new, :create, :show, :update, :edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "polite#salute"

end
