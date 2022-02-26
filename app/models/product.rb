class Product < ApplicationRecord

    def self.search(search)
        if search.present?
            Product.where('lower(title) LIKE ?', "%#{search.downcase}%")
        else
            Product.all
        end
    end 

end