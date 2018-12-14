class SetFalseToMusicFavoriteAsDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :musics, :favorite, :boolean, default: false
  end
end
