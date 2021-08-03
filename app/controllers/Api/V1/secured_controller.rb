module Api
  module V1
    class SecuredController < ApplicationController
      # before_action :authorize_request

      def index
        render json: {
          message: "#{@current_user}"
        }
      end
    
      private
    
      def authorize_request
        authorize_request = AuthorizationService.new(request.headers)
        @current_user = authorize_request.current_user
      rescue JWT::VerificationError, JWT::DecodeError
        render json: { errors: ['Not Authenticated'] }, status: :unauthorized
      end
    end
  end
end