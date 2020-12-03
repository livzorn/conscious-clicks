class MessageSetsController < ApplicationController

  def new
    @message_set = MessageSet.new
    @user = current_user
  end

  def create
    messages = params[:message_set][:messages]
    messages_array = messages.split('~')
    messages_array_with_links = []
    messages_array.each do |message|
      content = message.strip
      next if content == ''
      messages[content] = ''
    end
    @message_set = MessageSet.new(message_set_params)
    @message_set.messages = messages_array
    @message_set.user = current_user

    if @message_set.save!
      redirect_to community_path
    else
      render 'new'
    end
  end

  def edit
    @message_set = MessageSet.find(params[:id])
    @user = current_user
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
    redirect_to community_path
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
    params.require(:message_set).permit(:theme, :link)
  end
end
