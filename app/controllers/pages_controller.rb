class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    redirect_to landing_path unless user_signed_in?

    show_message

    show_typeboxes

    grab_a_treat
  end

  def quiz
    @user_message_set = UserMessageSet.new
    @message_sets = MessageSet.all
  end

  def dashboard
  end

  def save_goal
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    @goal.save
    show_typeboxes
    show_message
    render 'home'
  end

  def landing
  end

  def grab_a_treat
    treats = ['https://www.youtube.com/watch?v=ynLpZGegiJE', 'https://www.sdzsafaripark.org/giraffe-cam', 'https://www.youtube.com/watch?v=91wX0NRjJqg']
    @treat = treats.sample
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
    @message = messages.sample
  end

  def show_typeboxes
    @big_picture = Goal.where(category: "big-picture", user_id: current_user.id).last
    # @big_picture = " " if @big_picture.nil?
    @little_goals = Goal.where(category: "little-goals", user_id: current_user.id).last
    @custom_message = Goal.where(category: "custom-message", user_id: current_user.id).last
  end

  # messages = []
  # current_user.message_sets.each do |message_set|
  #   messages += message_set.messages
  # end
  # messages.flatten!
  # @message = messages.sample

  # make an array of all messages the user will be shown
  # show User a random message from their message sets
  # once shown, add that message to seen_messages and remove from upcoming messages
  # if the Day is the next day, change the message to the next upcoming message
  #


end
