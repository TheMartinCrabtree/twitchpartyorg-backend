Rails.application.routes.draw do
  resources :gameserverinfos
  resources :users
  resources :voips
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
