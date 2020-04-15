Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # passenger routes
  get 'flights/:flight_id/manifest', to: 'passengers#manifest', as: 'manifest'
  get 'flights/:flight_id/manifest/remove_passenger', to: 'passengers#remove', as: 'remove_passenger'
  get 'passengers/:pass_id/', to: 'passengers#show', as: 'passenger'
  get 'passengers/:pass_id/edit', to: 'passengers#edit', as: 'edit_passenger'
  patch 'passengers/:pass_id/', to: 'passengers#update'
  
  # pf routes
  delete 'flights/:flight_id/manifest/delete_pf', to: 'pfs#destroy', as: 'destroy' # redirected from remove_passenger_path

  # flight routes
  get 'flights/:flight_id/cancel', to: 'flights#cancel', as: 'cancel_flight'
  get 'flights/:flight_id', to: 'flights#show', as: 'flight'
  get 'flights/', to: 'flights#index', as: 'flights'

  # movie routes
  get 'flights/:flight_id/movies', to: 'movies#index', as: 'movies'
  
  # food routes
  get 'flights/:flight_id/foods', to: 'foods#index', as: 'foods'

  # Gate Agent routes
  get 'agent/login', to: 'agents#login_form', as: 'login_form'
  post 'agent/login', to: 'agents#login'
  get 'agent/logout', to: 'agents#logout'

end
