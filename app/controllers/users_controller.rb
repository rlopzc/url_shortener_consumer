class UsersController < ApplicationController
  def token
    session[:token] = params[:user][:token]
    set_token
    redirect_to short_urls_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:token] = @user.api_key
      redirect_to short_urls_path
    else
      render :new
    end

  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation).to_h
    end
end
