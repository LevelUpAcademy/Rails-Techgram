class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = get_post_from_parameters
    @post.user_id = current_user.id
    if @post.save!
      redirect_to root_path
    else
      @notice = "Ocorreu um erro ao salvar."
      redirect_to posts_new_path
    end

  end

private
  def get_post_from_parameters
    Post.new(params.require('post').permit('post_image', 'description'))
  end
end
