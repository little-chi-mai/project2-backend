Rails.application.routes.draw do

  resources :users, :only => [:index, :create, :show] do
    resources :items, :only => [:create, :show, :index, :destroy]
  end

  resources :chats, :only => [:index, :new, :create, :show]

  resources :events

  resources :restaurants

  resources :attendants


  get '/search/:term' => 'pages#index'
  get '/fetchimage/:reference' => 'pages#fetch_image'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/logged_in' => 'sessions#is_logged_in?'

  get '/chats/info' => 'chats#info'

end
