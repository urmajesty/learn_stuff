Rails.application.routes.draw do
  root 'statuses#index'

  get '/login' => 'statuses#new'
  post '/login' => 'statuses#create'
  delete '/logout' => 'statuses#destroy'

  get '/signup' => 'learners#new'
  post '/signup' => 'learners#create'

  resources :languages
  resources :projects
  resources :statuses
  resources :courses
  resources :learners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
