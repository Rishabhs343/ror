class SearchController < ApplicationController
  def index
    @posts = Post.where(["title LIKE ? OR description LIKE ?","%#{params[:search]}%","%#{params[:search]}%"])
  end
end