Textacademy::Application.routes.draw do
  root :to => 'home#index'

  match 'twilio/sms' => 'twilio#process_sms'
end
