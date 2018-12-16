class Music < ApplicationRecord
  has_many :favorites

  def self.search(search)
    where('title || genre ILIKE ?', "%#{search}%")    
  end

end
