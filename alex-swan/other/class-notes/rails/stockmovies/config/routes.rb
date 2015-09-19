Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/stocks' => 'pages#home'
  get '/stocks/price' => 'stocks#price'
  get '/movie' => 'movie#movies'
  get '/movie/list' => 'movie#list'

end
