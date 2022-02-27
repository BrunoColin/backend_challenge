class Product < ApplicationRecord

    validates :title, presence: { message: " é obrigatório." }
    validates :value, presence: { message: " é obrigatório." }
    validates :description, presence: { message: " é obrigatória." }
    validates :image, presence: { message: " é obrigatória." }

    monetize :value, as: :price_cents

    def self.search(search)
        if search.present?
            Product.where('lower(title) LIKE ?', "%#{search.downcase}%")
        else
            Product.all
        end
    end 
    
end