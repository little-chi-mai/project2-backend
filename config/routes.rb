Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:index, :new, :edit]
  resources :chats, :only => [:index, :new, :create, :info]

  post '/users', to: 'users#create'
  get '/users/:user_id', to: 'users#show'
  get '/users', to: 'users#index'

end
