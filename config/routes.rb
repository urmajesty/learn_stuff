Rails.application.routes.draw do
  root 'sessions#index'

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'learners#new'
  post '/signup' => 'learners#create'

  get '/auth/:provider/callback' =>'sessions#create'
  
  resources :languages
  resources :projects
  resources :sessions
  resources :courses
  resources :learners

  resources :learners, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
