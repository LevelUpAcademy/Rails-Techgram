class PagesController < ApplicationController
  def home
    @posts = Post.order('created_at DESC')
  end

  def post
  end

  def me

  end

  def search_results
    search_text = params[:q]
    @posts = Post.where('description LIKE ?', "%#{search_text}%")
  end

end
