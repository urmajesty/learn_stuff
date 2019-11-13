Rails.application.routes.draw do
  resources :course_statuses
  resources :projects
  resources :categories
  resources :courses
  resources :learners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
