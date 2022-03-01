class Product < ApplicationRecord

    validates :title, presence: { message: " é obrigatório." }
    validates :title, length: { minimum: 3 }
    validates :title, length: { maximum: 128 }
    validates :value, presence: { message: " é obrigatório." }
    validates :value, numericality: { greater_than: 0} 
    validates :description, presence: { message: " é obrigatória." }
    validates :description, length: { minimum: 10 }
    validates :description, length: { maximum: 500 }
    validates :image, presence: { message: " é obrigatória." }

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