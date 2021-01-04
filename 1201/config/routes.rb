Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'  
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/users/new', to: 'users#new'
  resources :users
end
  
