Kanban::Application.routes.draw do
  resources :attached_copies
  resources :attached_images
  resources :projects
  resources :states
  resources :stories, :users do
    post :sort, :on => :collection
  end
  resources :tasks

  root :to => 'projects#show', :id => 1
end
