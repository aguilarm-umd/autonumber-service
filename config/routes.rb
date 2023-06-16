Rails.application.routes.draw do
  resources :users
  root 'batch#new'

  resources :auto_numbers
  resources :names
  resources :repositories

  get 'batch' => 'batch#new'
  post 'batch' => 'batch#create'

  get 'autocomplete/names' => 'autocomplete#names'
  get 'autocomplete/repositories' => 'autocomplete#repositories'

  get '/ping' => 'ping#verify'
end
