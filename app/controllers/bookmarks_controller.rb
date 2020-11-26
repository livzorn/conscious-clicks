class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @user = User.find(params[:user_id])
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to dashboard_path
      #add a code to the homepage html user.bookmark .each do |bookmark| --> figure out how to display
    else
      redirect_to dashboard_path
    end
  end
  def edit
  end
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to dashboard_path
    #or should this be on the home page
  end
 private
  def bookmark_params
    params.require(:bookmark).permit(:link, :name)
  end
end

