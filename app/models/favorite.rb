class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :music

  def self.get_music(user)
    where('user_id = ?', "#{user.id}")
  end

end
