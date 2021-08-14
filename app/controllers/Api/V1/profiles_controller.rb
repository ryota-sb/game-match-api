module Api
  module V1
    class ProfilesController < ApplicationController

      def create
        profile = Profile.new(profile_params)
        if profile.save
          render json: { status: 'success', data: profile }
        else
          render json: { status: "error", data: profile.errors }
        end
      end
    
      def update
        profile = Profile.find(params[:id])
        if profile.update(profile_params)
          render json: { status: 'success', data: profile }
        else
          render json: { status: "error", data: profile.errors }
        end
      end
    
      private
    
      def profile_params
        params.permit(:discord_id, :message).merge(user_id: current_user.id)
      end
    end
  end
end