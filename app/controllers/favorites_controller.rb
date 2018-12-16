class FavoritesController < ApplicationController

  def index
    @user = User.last
    @favorites = Favorite.get_music(@user)
  end

  def new
    @favorite = Favorite.new

    @music = Music.find(params[:music_id])

    # @user simula um current_user usado com devise ou outro tipo de autenticação
    @user = User.last

    if @user.favorites.check(@music.id).exists?
      flash[:danger] = "'#{@music.title}' já favoritada"
      redirect_to musics_path
    end
  end

  def create
    @favorite = Favorite.create(music_params)
    if @favorite.save
      flash[:success] = "Música salva em favoritos!"
      redirect_to musics_path
    else
      flash[:danger] = "Algo deu errado..."
      redirect_to new_favorite_path
    end
    Rails.logger.info "\n\n #{@favorite.inspect} \n\n"

  end

  def destroy
    @delete_fav = Favorite.find(params[:id]).destroy

    if @delete_fav.destroy
      flash[:warning] = "Música retirada dos seus favoritos."
    else
      flash[:danger] = "Não foi possível remover dos favoritos..."
    end
    redirect_to favorites_path
  end

  private
  def music_params
    params.require(:favorite).permit(:music_id, :user_id, :title, :artist, :genre)
  end
end
