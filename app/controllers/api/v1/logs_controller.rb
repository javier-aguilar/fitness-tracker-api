class Api::V1::LogsController < ApplicationController
    def index
        logs = Log.all
        render json: {status: "SUCCESS", message: "Fetched all logs successfully", data: logs}, status: :ok
    end

    def show
        logs = Log.where(user_id: params[:id])
        render json: {status: "SUCCESS", message: "Fetched logs successfully", data: logs}, status: :ok
    end
end
