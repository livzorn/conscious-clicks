class UserController < ApplicationController
  def update
    current_user.color = params[:user][:color]
    current_user.save
    redirect_to dashboard_path
  end
end
