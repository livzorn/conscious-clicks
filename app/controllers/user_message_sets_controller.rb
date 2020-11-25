class UserMessageSetsController < ApplicationController

  def create
    @user_message_set = UserMessageSet.new(user_message_params)
    @user_message_set.user_id = current_user.id
    if @user_message_set.save!
      redirect_to root_path
    else
      render 'quiz'
    end
  end


private
def user_message_params
  params.require(:user_message_set).permit(:message_set_id)
end

end
