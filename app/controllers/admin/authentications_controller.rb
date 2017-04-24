class Admin::AuthenticationsController < ApplicationController
    def index
        @authentications = Authentication.all
    end

    def show
        @authentication = Authentication.find(params[:id])
    end

    def validate
        @authentication = Authentication.find(params[:id])
        @authentication.validate!
        redirect_to admin_authentications_path
    end

    def invalidate
        @authentication = Authentication.find(params[:id])
        @authentication.invalidate!
        redirect_to admin_authentications_path
    end

    def destroy
        @authentication = Authentication.find(params[:id])
        @authentication.destroy
        redirect_to admin_authentications_path
    end
end
