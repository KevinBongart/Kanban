Kanban::Application.routes.draw do
  resources :users

  resources :attached_copies
  resources :attached_images
  resources :tasks
  resources :states
  resources :projects
  resources :stories do
    post :sort, :on => :collection
  end

  root :to => 'projects#show', :id => 1
end
