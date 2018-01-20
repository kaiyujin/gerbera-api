Rails.application.routes.draw do
  resources :companies
  resources :shops
  post 'user_token' => 'user_token#create'
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
