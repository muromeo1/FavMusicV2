class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.boolean :favorite

      t.timestamps
    end
  end
end
