class AddictionsController < ApplicationController
  before_action :set_addiction, only: :show
  before_action :set_ransak_q,  only: [:index, :show, :search]

  def index
    @addictions_job     = Addiction.job.rand10.includes(:star)
    @addictions_hobby   = Addiction.hobby.rand10.includes(:star)
    @addictions_browsed = Addiction.rand10.includes(:star)
  end

  def show
    @star = @addiction.star
  end
  
  def search
  end

  private
  def set_addiction
    @addiction = Addiction.find(params[:id])
  end

  def set_ransak_q
    @q     = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)
  end
end
