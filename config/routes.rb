Rails.application.routes.draw do
  resources :questions, only: [:index]
  resources :resources, only: [:index]
  resources :activities
  resources :planets, only: [:index]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  post '/questions', to: 'questions#index'

end
