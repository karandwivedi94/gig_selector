Rails.application.routes.draw do
  get 'artists/new'
  get 'artist/new'
  root :to => 'pages#home'
  resources :users

  resources :gigs

  resources :artists



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end