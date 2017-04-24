class AuthenticationsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def new
        @authentication = Authentication.new
    end

    def create
        @authentication = Authentication.new(authentication_params)
        if @authentication.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def authentication_params
        params.require(:authentication).permit(:user_name, :user_adress, :phone_number)
    end
end
