Rails.application.routes.draw do
  get 'posts/new'

  post 'posts/create'

  get 'pages/home'
  get 'pages/post'
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
