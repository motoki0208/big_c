class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(addiction_id: @addiction.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(addiction_id: @addiction.id)
    like.destroy
  end

  private

  def set_variables
    @addiction = Addiction.find(params[:addiction_id])
    @id_name = "#like-link-#{@addiction.id}"
  end

end