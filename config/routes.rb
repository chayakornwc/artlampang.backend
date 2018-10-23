Rails.application.routes.draw do
  
  get 'welcome/index'
  get 'sessions/new'
  resources :articles
  root 'welcome#index'
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  resources :users
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
