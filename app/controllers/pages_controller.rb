class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @big_picture_goal = Goal.last

    @message = show_message

    treats = ['https://www.youtube.com/watch?v=ynLpZGegiJE', 'https://www.sdzsafaripark.org/giraffe-cam', 'https://www.youtube.com/watch?v=91wX0NRjJqg']
    @treat = treats.sample
  end

  def quiz
  end

  def dashboard
  end

  def save_goal
    @goal = Goal.new(goal_params)
    @goal.save
    @big_picture = Goal.where(category: "big-picture").last
    @little_goals = Goal.where(category: "little-goals").last
    @custom_message = Goal.where(category: "custom-message").last
    @message = show_message
    render 'home'
  end

  private

  def goal_params
    params.require(:goal).permit(:category, :content)
  end

  def show_message
    messages = []
    current_user.message_sets.each do |message_set|
      messages += message_set.messages
    end
    messages.flatten!
    messages.sample
  end
end
