XrghNew::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  ActiveAdmin.routes(self)
  resources :users
end
