Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'tasks', to: 'tasks#create', as: 'create_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'
  delete 'tasks/:id', to: 'tasks#delete', as: 'delete_task'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'create_task_form' 
  get 'tasks/:id', to: 'tasks#find', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
end