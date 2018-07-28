class AddictionsController < ApplicationController

before_action :set_addiction, only: [:show]

  def index
    @q = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)
    @addictions = Addiction.all
  end

  def show
  end

  def like_detail
    @addictions = Addiction.all
  end

  private
    def set_addiction
      @addiction = Addiction.find(params[:id])
    end
end
