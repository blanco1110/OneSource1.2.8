Rails.application.routes.draw do
  get 'open_order_report', to: 'open_order_report#index'
  post 'open_order_report', to: 'open_order_report#index'
  get 'repair_order_report', to: 'repair_order_report#index'
  post 'repair_order_report', to: 'repair_order_report#index'
  get 'warranty_report', to: 'warranty_report#index'
  post 'warranty_report', to: 'warranty_report#index'
  get 'repair_component_per_order_report', to:'repair_component_per_order_report#index'
  post 'repair_component_per_order_report', to:'repair_component_per_order_report#index'
  get 'popular_devices', to:'popular_devices#index'
  get 'popular_devices', to:'popular_devices#index'
  get 'top_customer_report', to: 'top_customer_report#index'
  post 'top_customer_report', to: 'top_customer_report#index'
  get 'not_started_order_report', to: 'not_started_order_report#index'
  get 'on_hold_order_report', to: 'on_hold_order_report#index'
  get 'awaiting_parts_report', to: 'awaiting_parts_report#index'
  get 'completed_order_report', to:'completed_order_report#index'







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
