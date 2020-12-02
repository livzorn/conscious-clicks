class UserMessageSetsController < ApplicationController

  def create
    current_user.user_message_sets.destroy_all
    if params[:user_message_set]
      params[:user_message_set][:message_set_id].each do |message_set_id|
        @user_message_set = UserMessageSet.create(message_set_id: message_set_id, user_id: current_user.id)
      end
    end
    redirect_to dashboard_path
  end
  # changed nq 19/11

  def add_one

    @message_set = MessageSet.find(params[:message_set_id])

    user_message_set = UserMessageSet.new( message_set: @message_set, user: current_user)

    user_message_set.save

    redirect_to community_path
    #once we have found we hwant to create the user messages
    #connecting them -- many to many interdependent --> then you need to joint table--> which is the user message sets--> has an id of its own but also an id to the user and to the message set

    #need to know the id from the params and then use the id to find the message set --passed from params
    #create the user message set for which you need the current user and the message set id that I just found
    #redirect back to the same page -- without the plus button --  later -- only show it if the message set isn't already in the user's array of message sets
    #link to by default is a get so it has to be a post
  end

  def take_one
    @message_set = MessageSet.find(params[:message_set_id])

    user_message_set = UserMessageSet.find_by( message_set: @message_set, user: current_user)

    user_message_set.destroy

    redirect_to community_path

  end

private
def user_message_params
  params.require(:user_message_set).permit(:message_set_id)
end

end
