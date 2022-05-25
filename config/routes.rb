Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/uppost', to: 'static_pages#up_post'
  get 'filter/(:field)', to: 'static_pages#filter'
  get 'search/(:keyword)', to: 'static_pages#search'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :posts do
    resources :comments
  end
  resources :likes, only: %i[create destroy]
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
