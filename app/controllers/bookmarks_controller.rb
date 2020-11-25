class BookmarksController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @user = User.find(params[:user_id])
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to dashboard_path
      #not yet saving anywhere
      #check where we are rendering to and where we are re-directing to
      #where are we displaying this --> how do we get the links to show on the homepage ?
      #add a code to the homepage html user.bookmark .each do |bookmark| --> figure out how to display
    else
      render :new
    end
  end
  def edit
  end
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect to dashboard_path
    #or should this be on the home page
  end
 private
  def bookmark_params
    params.require(:bookmark).permit(:link, :name)
  end
end

