Rails.application.routes.draw do
  root 'appliances#index'
  resources :appliances, except: %i[index]
end
