Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/help' => 'pages#help'
  get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'
end
