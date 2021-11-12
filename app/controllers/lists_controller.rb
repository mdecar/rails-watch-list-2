class ListsController < ApplicationController

  def show
      @list = List.find(params[:id])
      @bookmark = Bookmark.new

  end

  def index
  @lists = List.all
  end

  def new
    @list = List.new
  end

  def create

    list = List.new(list_params)
    list.save
    redirect_to lists_path
  end

  def list_params
    params.require(:list).permit(:name, )
  end

end
