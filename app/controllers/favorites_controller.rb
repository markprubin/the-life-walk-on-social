class FavoritesController < ApplicationController
  before_action :authenticate_user


  def index
    favorites = Favorite.all
    render json: favorites.as_json
  end

end