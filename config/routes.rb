Rails.application.routes.draw do

#EVENTS
resources :events

#TASKS

get "/tasks" => "tasks#index"
post "/tasks" => "tasks#create"
delete "/tasks/:id" => "tasks#destroy"


#FAVORITES

get "/favorites" => "favorites#index"
post "/favorites" => "favorites#create"
delete "/favorites/:id" => "favorites#destroy"

#USERS
resources :users

#SESSIONS (LOG IN)
post "/sessions" => "sessions#create"

end
