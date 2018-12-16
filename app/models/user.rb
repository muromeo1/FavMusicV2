class User < ApplicationRecord
  validates :name, presence: {message: "não pode ficar em branco"}, length: {maximum: 100, message: "deve conter no máximo 100 caracteres."},
                    format: { with: /\A[a-záàâãéèêíïóôõöúçñ]+\z/i, message: "deve conter apenas letras." }

  validates :age, presence: { message: "não pode ficar em branco"}, length: {maximum: 3, message: "deve ser uma idade válida."},
                    numericality: { only_integer: true, message: "inválida."}

  validates :email, presence: { message: "não pode ficar em branco"},
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "inválido" }

  has_many :favorites
  has_many :musics, through: :favorites


end
