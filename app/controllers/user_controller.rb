class UserController < ApplicationController

    before_action :authenticate_user

    def authenticate_user
        redirect_to user_products_path unless current_user
    end

end