module Api
  module V1
    class SecuredController < ApplicationController
      
      include Secured

      def index
        render json: {
          message: "#{current_user}"
        }
      end
    end
  end
end