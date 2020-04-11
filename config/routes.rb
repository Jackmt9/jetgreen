Rails.application.routes.draw do
  resources :flights
  get 'flights/:flight_id/manifest', to: 'passengers#manifest', as: 'manifest'
  get 'passengers/:pass_id/', to: 'passengers#show', as: 'passenger'
  get 'passengers/:pass_id/edit', to: 'passengers#edit', as: 'edit_passenger'
  patch 'passengers/:pass_id/', to: 'passengers#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
