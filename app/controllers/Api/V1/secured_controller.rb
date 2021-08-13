module Api
  module V1
    class SecuredController < ApplicationController
      def index
        render json: {
          message: "ID: #{current_user.id}, SUB: #{current_user.sub}"
        }
      end
    end
  end
end