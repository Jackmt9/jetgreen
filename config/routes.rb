Rails.application.routes.draw do

  get 'flights/:flight_id/manifest', to: 'passengers#manifest', as: 'manifest'
  get 'flights/:flight_id/manifest/remove_passenger', to: 'passengers#remove', as: 'remove_passenger'
  delete 'flights/:flight_id/manifest/delete_pf', to: 'pfs#destroy', as: 'destroy'
  get 'passengers/:pass_id/', to: 'passengers#show', as: 'passenger'
  get 'passengers/:pass_id/edit', to: 'passengers#edit', as: 'edit_passenger'
  patch 'passengers/:pass_id/', to: 'passengers#update'

  get 'flights/:flight_id/cancel', to: 'flights#cancel', as: 'cancel_flight'
  get 'flights/:flight_id', to: 'flights#show', as: 'flight'
  # post 'flights/:flight_id', to: 'flights#destroy'

  get 'flights/:flight_id/movies', to: 'movies#index', as: 'movies'
  
  get 'flights/:flight_id/foods', to: 'foods#index', as: 'foods'
  resources :flights
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
