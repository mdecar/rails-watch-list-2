
class BookmarksController < ActionController::Base
 def index
  @bookmarks = Boomarks.all
 end

 def show
  @bookmark = Bookmark.find(params[:id])
 end

  def new
  @list = List.find(params[:list_id])
  @bookmark = Bookmark.new
end

def create
 @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
  @bookmark.list = @list
  @bookmark.save
  redirect_to list_path(@list)
end

def bookmark_params
    params.require(:bookmark).permit(:list_id, :movie_id, :comment  )
  end


end
