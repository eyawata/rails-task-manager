Rails.application.routes.draw do

  # show all
  get "/tasks", to: "tasks#index", as: :tasks

  # create a task
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  # show one task
  get "tasks/:id", to: "tasks#show", as: :task

  # edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"

  # destroy
  delete '/tasks/:id', to: 'tasks#destroy'

end
