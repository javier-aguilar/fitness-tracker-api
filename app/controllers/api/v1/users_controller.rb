class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: {status: "SUCCESS", message: "Fetched all users successfully", data: users}, status: :ok
    end
end
