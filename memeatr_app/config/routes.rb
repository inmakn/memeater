Rails.application.routes.draw do

  #Home Page
  root 'home#index'

  #User Routes
  resources :users, :except => :index

  #Game Routes
  resources :games, :except => [:index, :edit]


  #Sessions Routes
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/error' => 'sessions#error'

end
