AmericanTelecomWest::Application.routes.draw do
  
  devise_for :users
  root :to => 'static_pages#home'

  resources :cabling_services
  resources :nortel_services
  resources :cabling_add_servs
  resources :nortel_add_servs
  resources :clients
  resources :faqs

  get '/admin' => 'static_pages#admin'
  get '/tmetrics' => 'static_pages#tmetrics'
  
end
