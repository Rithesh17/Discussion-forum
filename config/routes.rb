Rails.application.routes.draw do
  resources :discusses
  root 'discusses#index'

  devise_for :users, controllers: {registrations: 'registrations'}

end
