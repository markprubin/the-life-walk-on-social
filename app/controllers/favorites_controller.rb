class FavoritesController < ApplicationController
  before_action :authenticate_user


  def index
    favorites = Favorite.all
    render json: favorites.as_json
  end

  def create
    favorites = Favorite.new(
    user_id: current_user.id,
    event_id: params[:event_id],
    status: "added",
    )
    if favorites.save
      render json: { message: "Event favorited" }, status: :created
    else
      render json: { errors: favorites.errors.full_messages }, status: :bad_request
  end

  def destroy
    favorites = Favorite.find_by(id: params[:id])
    favorites.status = "removed"
    favorites.save
    render json: {status: "Favorite removed."}
  end
end