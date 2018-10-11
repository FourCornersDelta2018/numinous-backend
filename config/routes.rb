Rails.application.routes.draw do
  resources :destinations, only: [:index]
  resources :destination_users
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
