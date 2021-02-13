Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:index, :new, :edit]
  resources :chats, :only => [:index, :new, :create, :info]



end
