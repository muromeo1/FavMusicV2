class AddColumnsToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :title, :string
    add_column :favorites, :artist, :string
    add_column :favorites, :genre, :string
  end
end
