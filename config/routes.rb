Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  get 'admin/index'
  
  resources :eventos
  
  root 'eventos#index'
  mount API::Base, at: "/"
  # mount GrapeSwaggerRails::Engine, at: "/documentation"
  # mount Eventos::API => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
