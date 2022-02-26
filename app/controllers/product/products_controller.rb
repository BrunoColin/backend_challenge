class Product::ProductsController <ProductController
    def index
        if params[:sort] != "title: :desc"
            @products = Product.search(params[:search]).order(title: :desc)
        else
            @products = Product.search(params[:search]).order(title: :asc)
        end
       
    end 
end