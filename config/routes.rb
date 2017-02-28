Rails.application.routes.draw do
  resources :questionarios
  resources :questaos
  resources :pacientes
  resources :profissionals
  resources :pessoas
  root to: "home#index"
  devise_for :users
  resources :tiposervicos
  resources :estadocivils
  resources :generos
  resources :tipocancers
  resources :produtos
  resources :escolaridades
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
