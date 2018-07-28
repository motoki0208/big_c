class AddictionsController < ApplicationController

  def index
    @q = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)
  end
  
end
