class Product::ProductsController <ProductController

    def index
        if params[:sort] != "title: :desc"
            @products = Product.search(params[:search]).order(title: :asc).paginate(:per_page => 12, :page => params[:page])
        else
            @products = Product.search(params[:search]).order(title: :desc).paginate(:per_page => 12, :page => params[:page])
        end
       
    end 

end


