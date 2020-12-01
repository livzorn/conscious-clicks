class MessageSetsController < ApplicationController

  def new

  end

  def create

    @message_set = MessageSet.new(message_set_params)
    @message_set.user = current_user
    if @message_set.save
      redirect_to dashboard_path
      #add a code to the homepage html user.bookmark .each do |bookmark| --> figure out how to display
    else
      redirect_to dashboard_path
    end
  end

  def edit
    @message_set = MessageSet.find(params[:id])
  end

  def update
    @message_set = MessageSet.find(params[:id])
    if @message_set.update
      redirect_to dashboard_path
    else
    render "edit"
    end
  end

  def destroy
    @message_set = MessageSet.find(params[:id])
    @message_set.destroy
    redirect_to dashboard_path
  end

  def publish
    @message_set = MessageSet.find(params[:id])
    if @message_set.public?
      @message_set.public = false
    else
      @message_set.public = true
    end
    @message_set.save!
    redirect_to community_path
  end

  private
  def message_set_params
    params.require(:message_set).permit(:theme, :messages, :link)
  end
end
