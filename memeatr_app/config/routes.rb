Rails.application.routes.draw do

  #Home Page
  get '/' => 'home#index', as: 'home'

  #User Routes
  resources :users, :except => :index

  #Game Routes
  resources :games, :except => :index


  #Sessions Routes
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/error' => 'sessions#error'

end
