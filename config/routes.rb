Rails.application.routes.draw do
  resources :questions, only: [:index, :show]
  resources :resources, only: [:index]
  resources :activities
  resources :planets, only: [:index]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  post '/questions', to: 'questions#show'
  post '/show', to: 'questions#recieve_answer'

end
