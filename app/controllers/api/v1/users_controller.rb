class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: {status: "SUCCESS", message: "Fetched all users successfully", data: users}, status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: {status: "SUCCESS", message: "Fetched user successfully", data: user}, status: :ok
    end
end
