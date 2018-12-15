class FavoritesController < ApplicationController

  def create

Rails.logger.info "\n\n #{params.inspect} \n\n"

    Favorite.create(params[:id])
    Rails.logger
  end

  private
  def music_params
    # params.require(:music).permit(:music_id, )
  end
end
