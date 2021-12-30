Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/contact_form', to: 'pages#contact_form'
  resources :business_units, only: [:index]
end
