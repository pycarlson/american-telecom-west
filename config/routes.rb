AmericanTelecomWest::Application.routes.draw do
  
  devise_for :users
  root :to => 'static_pages#home'

  resources :services

  resources :additional_services

  resources :clients

  resources :faqs

  get '/admin' => 'static_pages#admin'
  

end
