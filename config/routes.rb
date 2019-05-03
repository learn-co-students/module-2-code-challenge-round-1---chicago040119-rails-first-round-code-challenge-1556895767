Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
  get 'search', action: :search, controller: 'heroines'
  get 'egg', action: :egg, controller: 'heroines'

end
