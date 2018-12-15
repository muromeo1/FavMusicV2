class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :music

  def get_music
    
  end
end
