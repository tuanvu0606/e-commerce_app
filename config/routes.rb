Rails.application.routes.draw do
  resources :inventory_items
  resources :inventory_models
  resources :inventory_item_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about_us'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
