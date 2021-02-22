class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        users = User.all
        render json: users
    end

    def create
        byebug
        user = User.find_or_create_by(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
