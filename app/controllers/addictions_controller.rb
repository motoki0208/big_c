class AddictionsController < ApplicationController
  def index
    respond_to do |format|
      format.html {
        @q = Star.ransack(params[:q])
        @stars = @q.result(distinct: true)
      }
      format.json {
        case params[:category]
        when "speciality"
          @tags = SpecialityTag.where( 'text Like(?)',"%#{params[:keyword]}%" )
        when "worry"
          @tags = WorryTag.where( 'text Like(?)',"%#{params[:keyword]}%" )
        end
      }
    end
  end

  def search
    @q = Star.ransack(params[:q])
    @stars = @q.result(distinct: true)
  end
end
