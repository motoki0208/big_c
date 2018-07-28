class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(addcition_id: @addcition.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(addcition_id: @addcition.id)
    like.destroy
  end

  private

  def set_variables
    @addiction = Addiction.find(params[:addiction_id])
    @id_name = "#like-link-#{@addcition.id}"
  end

end