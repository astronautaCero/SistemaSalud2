Rails.application.routes.draw do
  get 'gestions', to:'gestion_users#home'

  devise_for :users
  get 'static_pages/home'

  resources :personas

 root to: "static_pages#home"

 #get 'index', to: :index, controller: 'users'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
