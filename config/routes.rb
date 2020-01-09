Rails.application.routes.draw do
  root 'sessions#index'

  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'learners#new'
  post '/signup' => 'learners#create'

  get '/auth/google_oauth2/callback' =>'sessions#omniauth'

  get '/learners/:id/message' => 'learners#message'
  
 resources :courses do
  resources :statuses, only: [:index, :new, :create]
 end
 resources :statuses
 resources :languages do
  resources :statuses
 end
 resources :learners
 
end

