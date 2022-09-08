Rails.application.routes.draw do
  get 'posts/index'
  get '/' => "user#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'index' => "user#index"

  resources :posts
end
