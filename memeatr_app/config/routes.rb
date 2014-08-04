Rails.application.routes.draw do

  #Home Page
  get '/' => 'home#index', as: 'home'

  #User Routes
  resources :users, :except => :index

  #Game Routes
  resources :games, :only => [:new, :show, :create, :edit, :update]

  #GameFrame Routes
  resources :gameframes, :only => :show

  #Sessions Routes
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
