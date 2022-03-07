class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: { message: " é obrigatório" }
  validates :name, length: { minimum: 3, message: " é muito pequeno (mínimo 3 caracteres)" }
  validates :name, length: { maximum: 128, message: " é muito grande (máximo 128 caracteres)" }
end
