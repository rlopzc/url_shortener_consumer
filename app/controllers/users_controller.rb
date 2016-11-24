class UsersController < ApplicationController
  def token
    session[:token] = params[:user][:token]
    BaseApi.token = session[:token]
    redirect_to short_urls_path
  end
end
