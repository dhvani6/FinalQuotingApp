Rails.application.routes.draw do
  resources :equipment_tires
  resources :equipment_implements
  resources :equipment_attachments
  resources :employees
  resources :customers
  resources :tire_replacement_rears
  resources :tire_replacement_fronts
  resources :attachments
  resources :implements
  resources :discounts
  resources :quotes
  resources :price_histories
  resources :list_prices
  resources :manufacturers
  resources :series
  resources :models
  resources :specific_equipments
  resources :samples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
