Rails.application.routes.draw do
  resources :user_sessions
  resources :user_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_sessions#index'
end
