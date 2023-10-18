Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cloud-whatsapp', to: 'whatsapp_test#whatsapp_cloud_send_message' 
  get '/twilio-whatsapp', to: 'whatsapp_test#twilio_send_message'
  resources :articles do
    post :search
  end
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
end
