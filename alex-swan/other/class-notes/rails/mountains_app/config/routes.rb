Rails.application.routes.draw do
  root :to => 'mountains#index'
  get '/mountains' => 'mountains#index'
  get '/mountains/new' => 'mountains#new'
  get '/mountains/:id' => 'mountains#show', :as => 'mountain'
  post 'mountains' => 'mountains#create'
  delete 'mountains/:id' => 'mountains#destroy'
  get 'mountains/:id/edit' => 'mountains#edit', :as => 'mountain_edit'
  post 'mountains/:id' => 'mountains#update'
 
end
