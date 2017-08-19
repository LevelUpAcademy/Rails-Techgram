class PagesController < ApplicationController
  def home
    @posts = Post.order('created_at DESC')
  end

  def post
  end

  def me
    
  end

end
