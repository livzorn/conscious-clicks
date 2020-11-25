class UserMoodsController < ApplicationController
  def new
    @user_mood = UserMood.new
  end
  def create
    @user_mood = UserMood.new(mood_params)
    @user_mood.user_id = current_user.id
    if @user_mood.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def mood_params
    params.require(:user_mood).permit(:mood_id)
  end
end
