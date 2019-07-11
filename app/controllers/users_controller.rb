class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def show 
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    private

    def user_params 
        params.require(:user).permit(:username, :password_digest, :native_species)
    end


end
