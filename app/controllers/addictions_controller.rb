class AddictionsController < ApplicationController

  def index
    @q = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)
    @addictions = Addiction.all
  end
  
end
