class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    # Criando um objeto populado
    # p = Post.new("post_image" => "imagem.jpg", "description": "bla bla bal")

    post = Post.new(params.require(:post).permit('post_image', 'description'))
    post.user_id = current_user.id

    if post.save!
      redirect_to root_path
    else
      redirect_to posts_new_path
    end

  end

private
  def get_post_from_parameters
    Post.new(params.require('post').permit('post_image', 'description'))
  end
end
