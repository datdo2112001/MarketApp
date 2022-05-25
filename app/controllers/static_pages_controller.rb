class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:filter, :search]
  def home
    if user_signed_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      @posts = Post.all.paginate(page: params[:page])
    end
  end

  def help
  end

  def up_post
    if user_signed_in?
      @post = current_user.posts.build
      @posts = current_user.posts.paginate(page: params[:page])
    end
  end

  def filter
    field = params[:field]
    @posts = Post.where(:kind => field).paginate(page: params[:page])
  end

  def search
    keyword = params[:keyword]
    @posts = Post.where('title LIKE ?', "%" + keyword + "%").paginate(page: params[:page])
  end


end
