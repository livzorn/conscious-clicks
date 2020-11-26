class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @big_picture = Goal.where(category: "big-picture", user_id: current_user.id).last
    @little_goals = Goal.where(category: "little-goals", user_id: current_user.id).last
    @custom_message = Goal.where(category: "custom-message", user_id: current_user.id).last

    @message = show_message

    redirect_to landing_path if !user_signed_in?
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
    @big_picture = Goal.where(category: "big-picture", user_id: current_user.id).last
    @little_goals = Goal.where(category: "little-goals", user_id: current_user.id).last
    @custom_message = Goal.where(category: "custom-message", user_id: current_user.id).last
    @message = show_message
    render 'home'
  end

  private

  def goal_params
    params.require(:goal).permit(:category, :content, :user_id)
  end

  def show_message
    messages = []
    current_user.message_sets.each do |message_set|
      messages += message_set.messages
    end
    messages.flatten!
    messages.sample
  end

  def landing
  end
end
