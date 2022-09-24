Rails.application.routes.draw do
  get 'reservations/index'
  get 'posts/index'
  get '/' => "user#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'index' => "user#index"
  get 'new' => "posts/new"

  get 'search' => 'posts#search' #検索機能

  get '/signup', to: 'logins#new'
  post '/signup', to: 'logins#create'
  get '/logins/:id', to: 'logins#show', as: 'profile'
  delete '/logins/:id', to: 'logins#destroy', as: 'unsubscribe'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :posts do
    resources :reservations
  end 

  get '/reservations' => 'reservations#index' 
  get '/lend' => 'reservations#lend'



end
