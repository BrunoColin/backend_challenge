class User::ProductsController <UserController
        def index 
            @products = Product.order(title: :desc)
        end    
end