class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(star_id: @star.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(star_id: @star.id)
    like.destroy
  end

  private

  def set_variables
    @star = Star.find(params[:star_id])
    @id_name = "#like-link-#{@star.id}"
  end

end