module Api
  module V1
    class SecuredController < ApplicationController

      def login
        render json: {
          message: "ID: #{current_user.id}, SUB: #{current_user.sub} でログインしました",
          data: current_user
        }
      end

      def logout
        render json: {
          message: "ID: #{current_user.id}, SUB: #{current_user.sub} でログアウトしました"
        }
      end

    end
  end
end