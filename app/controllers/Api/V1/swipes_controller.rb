module Api
  module V1
    class SwipesController < ApplicationController
      
      def index
        # すでにswipeしたuserを省いて、swipeしていないuserを１つ取得
        
        # swipeしたuser取得して配列に入れる
        # swiped_user_id = Swipe.where(from_user_id: current_user.id).pluck(:to_user_id)
        # render json: { data: swiped_user_id }

        data = current_user.reverse_of_swipes
        render json: { data: data }
      end

      def create
        
      end

      def destroy
      
      end

      private

      def swipe_params
        params.require(:swipe).permit(:to_user_id, :from_user_id, :is_like)
      end
      
    end
  end
end
