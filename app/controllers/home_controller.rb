class HomeController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page], :per_page => 6)
  end

  def about
  end
end
