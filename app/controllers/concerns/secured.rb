module Secured
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_request!
  end

  def current_user
    @user
  end

  private

  def authenticate_request!
    @auth_payload, @auth_header = auth_token
    @user = User.from_token_payload(@auth_payload)
  rescue JWT::VerificationError, JWT::DecodeError
    render json: { errors: ['Not Autheticated'] }, status: :unauthorized
  end

  def http_token
    if request.headers['Authorization'].present?
      request.headers['Authorization'].split(' ').last
    end
  end

  def auth_token
    JsonWebToken.verify(http_token)
  end
end