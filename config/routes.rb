Rails.application.routes.draw do
  get 'send/contact'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/home'
  get 'pages/contact'
  get 'send' => 'send#contact'
  post 'send' => 'send#create'
  get 'pages/about'
  devise_for :users
  resources :events
  get 'pages/index'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
