Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :events
  resources :attendances
  resources :users 
  root 'events#index'
end
