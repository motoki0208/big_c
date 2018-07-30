class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_variables, only: [:like, :unlike]

  def index
    @addictions = current_user.addictions
  end

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
    @id_name = "#like-button-#{@addiction.id}"
  end

end
