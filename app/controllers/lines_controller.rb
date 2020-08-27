class LinesController < ApplicationController
  def index
  	#路線の最新情報を取るためにAPIからデータ取得
  	if params[:p].present?
	  	@name = Prefecture.find(params[:p]).name
	  	@lines = HeartRails::Line.list(@name)
    else
    	@lines = {"response"=>{"line"=>[]}}
    end
  end
end
