Rails.application.routes.draw do
  root 'appliances#index'
  resources :appliances, except: %i[index] do
    resources :buttons, except: %i[index], controller: 'appliances/buttons'
  end
  get 'signal', to: 'signal#read', format: :json
end
