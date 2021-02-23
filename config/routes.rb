Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/new', to: 'tasks#new', as: 'create_task_form'
  post 'tasks', to: 'tasks#create', as: 'create_task'
  
  get 'tasks/:id', to: 'tasks#find', as: 'task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
end