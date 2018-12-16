class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
