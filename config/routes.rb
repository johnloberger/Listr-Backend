Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :lists
      resources :tasks
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      patch '/lists/:list_id/tasks', to: 'tasks#change'
      get '/lists/:list_id/tasks', to: 'tasks#indexList'
      end
    end
end
