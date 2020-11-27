class UserMessageSetsController < ApplicationController

  def create
    current_user.user_message_sets.destroy_all
    if params[:user_message_set]
      params[:user_message_set][:message_set_id].each do |message_set_id|
        @user_message_set = UserMessageSet.new(message_set_id: message_set_id, user_id: current_user.id)
      end
    end
    if @user_message_set.save!
      redirect_to root_path
    else
      render 'quiz'
    end
  end
  # changed nq 19/11


private
def user_message_params
  params.require(:user_message_set).permit(:message_set_id)
end

end
