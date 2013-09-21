Textacademy::Application.routes.draw do

  root :to => 'home#index'

  resources :contributors, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  match 'twilio/sms' => 'twilio#process_sms'
end
