Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks', to: 'tasks#show'
  get 'tasks', to: 'tasks#new'
  get 'tasks', to: 'tasks#create'
  get 'tasks', to: 'tasks#edit'
  get 'tasks', to: 'tasks#update'
  get 'tasks', to: 'tasks#destroy'
end
