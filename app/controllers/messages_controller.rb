class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.message_set = MessageSet.find(params[:message_set_id])
    if @message.save
      redirect_to community_path(anchor: "message-#{@message.id}", params: {tab: "mycustomsets"})
    else
      render 'community'
    end
  end

  def edit
    @message = Message.find()
  end

  def update

  end

  def destroy
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :link)
  end
end
