Rails.application.routes.draw do
  get 'admins/index'
  get 'admins', to: 'admins#index'
  
  patch 'users/:id', to: 'users#update', as: 'users'
  get 'users/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :stories
  root 'stories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
