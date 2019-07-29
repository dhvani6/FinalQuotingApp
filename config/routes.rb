Rails.application.routes.draw do
  get 'home/index'
  root'home#index'
  get 'Margin Markup Management', to: 'quote_configs#index'
  get 'Quote Reports', to: 'quotes#reports', as: :report

  root to: 'quotes#index'
  resources :quotes
  resources :manufacturers, only: [] do
    resources :series, only: :index
  end

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



  get '/quotes/reports' => 'quotes#reports'
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
