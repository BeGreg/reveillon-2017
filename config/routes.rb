Rails.application.routes.draw do

  resources :participants

  resources :accomodations

  root 'participants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
