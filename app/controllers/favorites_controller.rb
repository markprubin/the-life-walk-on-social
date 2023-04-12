class FavoritesController < ApplicationController
  
 
  def index
  
    # favorites = Favorite.all
    # render json: favorites.as_json

     favorites = Favorite.where(user_id: current_user.id)
     newevents = favorites.map do |favorite|
      {:event => Event.find_by(id: favorite.event_id),
      :table_id => favorite.id}
     end

     render json: newevents.as_json

  end

  def create
    favorite = Favorite.new(
    user_id: current_user.id,
    event_id: params[:event_id],
    )
    if favorite.save
      render json: { message: "Event favorited" }, status: :created
    else
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    favorites = Favorite.find_by(id: params[:id])
    favorites.delete
    render json: {status: "Favorite removed."}
  end

end