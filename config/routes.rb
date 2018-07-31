Rails.application.routes.draw do

  get 'open_order_report', to: 'open_order_report#index'
  post 'open_order_report', to: 'open_order_report#index'
  get 'repair_order_report', to: 'repair_order_report#index'
  post 'repair_order_report', to: 'repair_order_report#index'

  resources :device_post_tests
  resources :device_pre_tests
  resources :tests
  resources :repair_order_items
  resources :devices
  resources :repair_orders
  resources :customers
  resources :repair_order_statuses
  resources :technicians
  resources :device_components
  resources :device_versions
  resources :technician_statuses
  resources :device_component_statuses
  resources :device_manufacturers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
