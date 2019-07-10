Rails.application.routes.draw do
  resources :resources
  resources :users
  resources :questions
  resources :planets
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
