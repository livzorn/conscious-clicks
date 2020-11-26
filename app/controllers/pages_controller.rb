require 'date'

class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    redirect_to landing_path unless user_signed_in?

    set_daily_message
    show_typeboxes
    grab_a_treat
  end

  def quiz
    @user_message_set = UserMessageSet.new
    @message_sets = MessageSet.all
  end

  def dashboard

    @user = current_user
    @bookmark = Bookmark.new


    #move this to pages dashboard

  end

  def save_goal
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    @goal.save
    show_typeboxes
    set_daily_message
    render 'home'
  end

  def landing
  end

  def grab_a_treat
    treats = ['https://www.youtube.com/watch?v=ynLpZGegiJE', 'https://www.sdzsafaripark.org/giraffe-cam', 'https://www.youtube.com/watch?v=91wX0NRjJqg']
    @treat = treats.sample
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
    messages = []
    current_user.message_sets.each do |message_set|
      messages += message_set.messages
    end
    messages.flatten!
    current_user.current_message = messages.sample
    current_user.current_message_date = Date.today
    current_user.save!
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
