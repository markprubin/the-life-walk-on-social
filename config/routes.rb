Rails.application.routes.draw do

#EVENTS
resources :events


#FAVORITES

get "/favorites" => "favorites#index"
post "/favorites" => "favorites#create"
delete "/favorites/:id" => "favorites#destroy"

#USERS
resources :users

#SESSIONS (LOG IN)
post "/sessions" => "sessions#create"

end
