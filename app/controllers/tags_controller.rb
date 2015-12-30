class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    flash.notice = "Tag '#{@tag.title}' Deleted!"
    @tag.destroy
    redirect_to "/tags"
  end
end
