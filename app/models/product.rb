class Product < ApplicationRecord

    validates :title, presence: { message: " é obrigatório" }
    validates :title, length: { minimum: 3, message: " é muito pequeno (mínimo 3 caracteres)" }
    validates :title, length: { maximum: 128, message: " é muito grande (máximo 128 caracteres)" }
    validates :value, presence: { message: " é obrigatório" }
    validates :value, numericality: { greater_than: 0, message: " deve ser maior que 0" } 
    validates :description, presence: { message: " é obrigatória" }
    validates :description, length: { minimum: 10, message: " é muito pequena (mínimo 10 caracteres)" }
    validates :description, length: { maximum: 500, message: " é muito grande (máximo 500 caracteres)" }
    validates :image, presence: { message: " é obrigatória" }

    def self.search(search)
        if search.present?
            key = "%#{search.downcase}%"
            columns = %w{lower(title) lower(description)}
            @products = Product.where(
            columns
            .map {|c| "#{c} like :search" }
            .join(' OR '),
            search: key
            )
        else
            Product.all
        end
    end 
    
end