class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
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
  end

  def landing
  end
end
