module Api
  module V1
    class UsersController < ApplicationController
      
      def index
        # ログインユーザーを省いた、一人のユーザーレコードを取得
        user = User.where.not(id: current_user.id).order(Arel.sql('RAND()')).limit(1)
        render json: { status: 'success', data: user }
      end

      def show
        user = User.find(current_user.id)
        render json: { data: user }
      end

    end
  end
end
