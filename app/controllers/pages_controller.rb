class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    messages = []
    current_user.message_sets.each do |message_set|
      messages += message_set.messages
    end
    messages.flatten!
    @message = messages.sample
    treats = ['https://www.youtube.com/watch?v=ynLpZGegiJE', 'https://www.sdzsafaripark.org/giraffe-cam', 'https://www.youtube.com/watch?v=91wX0NRjJqg']
    @treat = treats.sample
  end

  def quiz
  end

  def dashboard
    @user_mood_today = UserMood.where(user: current_user, date: Date.current)
    @user_mood_today = @user_mood_today.map {|u| u.mood.happiness_level}
    if @user_mood_today.present?
      @average_mood_today = Mood.find_by(happiness_level: @user_mood_today.sum / @user_mood_today.count)
    end
  end
end
