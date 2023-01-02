Rails.application.routes.draw do

#EVENTS
get "/events" => "events#index"

#USERS
get "/users" => "users#index"
post "/users" => "users#create"

end
