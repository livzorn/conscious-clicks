require 'date'

class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    redirect_to landing_path unless user_signed_in?

    @user_mood = UserMood.new

    set_daily_message
    @message = current_user.current_message
    show_typeboxes
    @treat = grab_a_treat
  end

  def quiz
    @user_message_set = UserMessageSet.new
    @message_sets = MessageSet.all
  end

  def dashboard
    @user = current_user
    @bookmark = Bookmark.new
    @message_set = MessageSet.new
    # @user_mood_today = UserMood.where(user: current_user, date: Date.current)
    # @user_mood_today = @user_mood_today.map {|u| u.mood.happiness_level}
    # if @user_mood_today.present?
    #   @average_mood_today = Mood.find_by(happiness_level: @user_mood_today.sum / @user_mood_today.count)
    # end
    avg_mood_for_weekdays
  end

  def community
    @admin = User.find_by(name: "Conscious Clicks")
    @message_set = MessageSet.new(messages: "
      ~
      ~
      ~
      ~
      ~
      ~
      ~
      ~
      ")
    @user = current_user
  end

  def save_goal
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    @goal.save
    show_typeboxes
    set_daily_message
    @treat = grab_a_treat
    redirect_to root_path
  end

  def avg_mood(day)
    moods = UserMood.where(user: current_user, date: day)
    if moods.present?
      happiness_levels = moods.map {|u| u.mood.happiness_level}
      average_mood = Mood.find_by(happiness_level: happiness_levels.sum / moods.count)
    else
      average_mood = nil
    end
    average_mood
  end

  def avg_mood_for_weekdays
    @today = avg_mood(Date.today)&.emoji
    @minus_one = avg_mood(Date.today - 1)&.emoji
    @minus_two = avg_mood(Date.today - 2)&.emoji
    @minus_three = avg_mood(Date.today - 3)&.emoji
    @minus_four = avg_mood(Date.today - 4)&.emoji
    @minus_five = avg_mood(Date.today - 5)&.emoji
    @minus_six = avg_mood(Date.today - 6)&.emoji
  end

  def landing
  end

  def grab_a_treat
    treats = ['https://www.pixelthoughts.co/', "https://www.catlinseaviewsurvey.com/raja-ampat-second-dive",
      "https://www.google.com/search?q=unlikely+animal+friends&sxsrf=ALeKk01Wjxzu9x4QoKlugNLRQVWGuRbqlA:1606438391519&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjC7retwaHtAhWKY8AKHVq_A6UQ_AUoAXoECAUQAw&biw=1440&bih=728"]
    treats.sample
  end

  def refresh_message
    new_message
    redirect_to root_path
  end

  private

  def goal_params
    params.require(:goal).permit(:category, :content, :user_id)
  end

  def new_message
    message_set = current_user.message_sets.sample
    return if message_set.nil?

    # recommendation_index = rand(1..message_set.messages.length) - 1
    message = message_set.messages.keys.sample
    if message_set.messages[message].present?
      link = message_set.messages[message]
      current_user.current_message = Hash[message: message, link: link]
    else
      current_user.current_message = Hash[message: message]
    end

    current_user.current_message_date = Date.today
    current_user.save!

    # current_user.update!(current_message: {message: message})
  end

  def set_daily_message
    new_message unless current_user.current_message_date == Date.today
  end

  def show_typeboxes
    @big_picture = Goal.where(category: "big-picture", user_id: current_user.id).last
    @little_goals = Goal.where(category: "little-goals", user_id: current_user.id).last
    @custom_message = Goal.where(category: "custom-message", user_id: current_user.id).last
  end

  # def show_unseen_messages
  #   upcoming_messages = []
  #   seen_messages = []
  #   current_user.message_sets.each do |message_set|
  #     upcoming_messages += message_set.messages
  #   end
  #   messages.flatten!.shuffle!
  #   current_user.current_message = upcoming_messages.first
  #   upcoming_messages.delete(current_message)
  #   seen_messages << current_message
  # end
end
