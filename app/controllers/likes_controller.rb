class LikesController < ApplicationController
  def create
    id_user = current_user.id
    id_post = params[:id_post]

    Post.find(id_post).likes.create(user_id: id_user)

    respond_to do |format|
      msg = { :id_post => id_post, :status => 200, :message => "Success!", :html => "<b>...</b>" }
      format.json  { render :json => msg } # don't do msg.to_json
    end
  end
end
