Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "task#list"
  get "tasks/new", to: "task#new"
  get "tasks/:id/edit", to: "task#edit", as: :edit
  get "tasks/:id", to: "task#show", as: :task
  post "tasks", to: "task#create"
  patch "tasks/:id", to: "task#update"
  delete "tasks/:id", to: "task#destroy"

end
