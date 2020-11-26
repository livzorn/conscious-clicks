class UserMoodsController < ApplicationController

  def new
    @user_mood = UserMood.new
    @user_mood_today = UserMood.where(user: current_user, date: Date.current)
    @user_mood_today = @user_mood_today.map {|u| u.mood.happiness_level}
    if @user_mood_today.present?
      @average_mood_today = Mood.find_by(happiness_level: @user_mood_today.sum / @user_mood_today.count)
    end
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
