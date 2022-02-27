class Admin::ProductsController <AdminController
    before_action :set_product, only: [:edit, :update, :destroy]
    
        def index 
            @products = Product.order(title: :desc)
        end
    
        def new
            @product = Product.new
        end
    
        def create 
            @product = Product.new(form_params)
    
            if @product.save
                redirect_to admin_products_path
            else
                render :new
            end
        end
    
        def edit
        end
    
        def update     
            params = form_params.to_h
            # params = params.except!(:password, :password_confirmation) if params[:password].blank?
    
            if @product.update(params)
                redirect_to admin_products_path
            else
                render :edit
            end
        end
    
        def destroy
            @product.destroy
            redirect_to admin_products_path
        end
    
        private 
    
        def form_params
            params.require(:product).permit(:title, :description, :value, :price_cents, :image)
        end
    
        def set_product
            @product = Product.find(params[:id])
        end
    
    end