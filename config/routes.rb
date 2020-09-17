Rails.application.routes.draw do
  root 'users#new'
  get '/users/show' => 'users#show'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
