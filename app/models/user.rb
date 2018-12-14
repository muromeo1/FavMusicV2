class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 100}
  validates :age, presence: true, length: {maximum: 3}
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :musics

end
