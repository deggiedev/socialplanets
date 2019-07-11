Rails.application.routes.draw do

  resources :planet_materials
  resources :questions, only: [:index, :show]
  resources :materials, only: [:index]
  resources :activities
  resources :planets, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  post '/questions', to: 'questions#show'
  patch 'recieve_answer', to: 'questions#recieve_answer'
  get '/success', to: 'questions#success'
  get '/failure', to: 'questions#failure'


end

