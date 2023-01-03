Rails.application.routes.draw do

#EVENTS
get "/events" => "events#index"
get "/events/:id" => "events#show"
post "/events" => "events#create"
patch "/events/:id" => "events#update"
delete "/events/:id" => "events#destroy"


#FAVORITES

get "/favorites" => "favorites#index"
post "/favorites" => "favorites#create"
delete "/favorites/:id" => "favorites#destroy"

#USERS
get "/users" => "users#index"
post "/users" => "users#create"
patch "/users/:id" => "users#update"
delete "/users/:id" => "users#destroy"

#SESSIONS (LOG IN)
post "/sessions" => "sessions#create"

end
