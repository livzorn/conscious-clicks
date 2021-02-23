class MessageSetsController < ApplicationController

  def new
    @message_set = MessageSet.new
    @user = current_user
  end

  def create
    @message_set = MessageSet.new(message_set_params)
    @message_set.user = current_user

    if @message_set.save!
      redirect_to community_path(params: {tab: "mycustomsets"})
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
    params.require(:message_set).permit(:theme, :message_1, :link_1, :message_2,
      :link_2, :message_3, :link_3, :message_4, :link_4, :message_5, :link_5,
      :message_6, :link_6, :message_7, :link_7, :message_8, :link_8, :message_9,
      :link_9, :message_10, :link_10)
  end
end
