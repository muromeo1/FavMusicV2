class CreateTableFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|

    end

    add_reference :favorites, :user, foreign_key: true
    add_reference :favorites, :music, foreign_key: true
  end
end
