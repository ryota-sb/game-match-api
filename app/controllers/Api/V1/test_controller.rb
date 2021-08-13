module Api
  module V1
    class TestController < ApplicationController
      def index
        render json: { message: "テストコントローラーからのレスポンスです" }
      end
    end
  end
end