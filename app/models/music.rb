class Music < ApplicationRecord
  has_many :favorites
  has_many :musics, through: :favorites
  

  def self.search(search)
    where('title || genre ILIKE ?', "%#{search}%")
  end

end
