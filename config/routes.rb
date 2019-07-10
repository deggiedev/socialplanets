Rails.application.routes.draw do
  resources :questions
  resources :resources
  resources :activities
  resources :planets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: => 'welcome#home'

end
