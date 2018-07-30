class AddictionsController < ApplicationController
  before_action :set_addiction, only: :show

  def index
    @q = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)

    @addictions_job  = Addiction.job.rand10.includes(:star)
    @addictions_hobby  = Addiction.hobby.rand10.includes(:star)
    @addictions_browsed = Addiction.rand10.includes(:star)
  end

  def show
   @star = @addiction.star
  end

  private
  def set_addiction
    @addiction = Addiction.find(params[:id])
  end
end
