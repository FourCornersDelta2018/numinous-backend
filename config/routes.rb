Rails.application.routes.draw do
  resources :destinations, :destination_users, :geo_attributes, :exp_attributes, :lang_attributes
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
