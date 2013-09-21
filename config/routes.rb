Textacademy::Application.routes.draw do

  root :to => 'home#index'

  resources :contributors, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :exercises, only: [:new, :create]
  resources :lessons, only: [:index, :show]

  match 'my_exercises' => "contributors#exercises", as: :my_exercises

  match 'twilio/sms' => 'twilio#process_sms'
end
