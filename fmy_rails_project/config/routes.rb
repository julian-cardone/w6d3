Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #resources :users, only: [:create, :destroy, :index, :show, :update]

  resources :artworks, only: [:create, :destroy, :show, :update]

  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: [:create, :destroy, :index, :show, :update]
  end

  # get '/users', to: 'users#index'
  # post '/users', to: 'users#create'
  # get '/users/new', to: 'users#new'
  # get '/users/:id', to: 'users#show'
  # get '/users/:id/edit', to: 'users#edit'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
end
