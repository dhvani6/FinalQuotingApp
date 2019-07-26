Rails.application.routes.draw do
  get 'home/index'
  root'home#index'
  get 'Finalize Quote Sales', to: 'quotes#finalize', as: :finalize
  get 'Margin Markup Management', to: 'quotes#setminmarkup', as: :markup

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

  resources :quotes do
    collection do
      get 'set_minimum'
    end
  end

  get '/quotes/reports' => 'quotes#reports'
  resources :quotes
  get '/quotes/finalize' => 'quotes#finalize'
  resources :quotes
  get '/quotes/setminmarkup' => 'quotes#setminmarkup'
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
