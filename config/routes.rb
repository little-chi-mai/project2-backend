Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:index, :create, :show] do
    resources :items, :only => [:create, :show, :index, :destroy]
  end

  resources :chats, :only => [:index, :new, :create, :show]

  post '/users' => 'users#create'
  get '/users/user_id' => 'users#show'
  get '/users' => 'users#index'

  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logged_in' => 'sessions#is_logged_in?'

  get '/chats/info' => 'chats#info'

end
