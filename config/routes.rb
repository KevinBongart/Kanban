Kanban::Application.routes.draw do
  resources :users

  resources :attached_copies
  resources :attached_images
  resources :tasks
  resources :states
  resources :stories
  resources :projects

  root :to => 'projects#show', :id => 1
end
