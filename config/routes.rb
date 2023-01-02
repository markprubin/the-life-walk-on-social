Rails.application.routes.draw do
#USERS
get "/users" => "users#index"
post "/users" => "users#create"

end
