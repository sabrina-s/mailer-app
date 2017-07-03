Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'messages#new'

  resources :messages, only: [:new, :create]
  # get 'messages/new', to: 'messages#new'
  # post 'messages/new', to: 'messages#create'
end
