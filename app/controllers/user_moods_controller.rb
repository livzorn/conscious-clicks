class UserMoodsController < ApplicationController

  def new
    @user_mood = UserMood.new
    @user_mood_today = UserMood.where(user: current_user, date: Date.today)
    @user_mood_today = @user_mood_today.map { |u| u.mood.happiness_level }
  end

  def create
    @user_mood = UserMood.new(mood_params)
    @user_mood.user_id = current_user.id
    @user_mood.date = Date.current
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
