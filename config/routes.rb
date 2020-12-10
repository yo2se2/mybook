Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  get 'books/index' => 'books#index'
  get 'books/favorite' => 'books#favorite'

  #投稿機能のルーティング
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  
  get 'books/:id' => 'books#show', as: 'book'

  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  root 'books#index'


end
