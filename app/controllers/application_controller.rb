class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveResource::UnauthorizedAccess, with: :unauthenticated
  rescue_from ActiveResource::ForbiddenAccess, with: :unauthorized

  private
  def unauthenticated
    redirect_to unauthenticated_path
  end

  def unauthorized
    redirect_to unauthorized_path
  end

  def set_token
    BaseApi.token = session[:token]
  end
end
