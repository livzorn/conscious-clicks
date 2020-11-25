class PagesController < ApplicationController

  # skip_before_action :authenticate_user!, only: :home


  def home
    # messages = []
    # current_user.message_sets.each do |message_set|
    #   @messages += message_set.messages
    # end
    # messages.flatten!
    # @message = messages.sample
    treats = ['https://www.youtube.com/watch?v=ynLpZGegiJE', 'https://www.sdzsafaripark.org/giraffe-cam', 'https://www.youtube.com/watch?v=91wX0NRjJqg']
    @treat = treats.sample
  end

  def quiz
  end

  def dashboard
  end
end
