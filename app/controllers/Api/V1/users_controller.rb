module Api
  module V1
    class UsersController < ApplicationController

      def index
        users = User.where.not(id: current_user.id)
        render json: { status: 'success', data: users }
      end

    end
  end
end
