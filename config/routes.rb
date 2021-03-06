Rails.application.routes.draw do
 

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/request', to:'relationships#show'
  get '/requestsent', to: 'relationships#showtwo'
  get '/upload', to: 'static_pages#upload'
  get '/microposts', to: 'microposts#index'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :microposts,          only: [:create, :destroy,:show,:index]
resources :relationships,  only: [:create,:show]
end
