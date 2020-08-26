class LinesController < ApplicationController
  def index
  	if params[:p].present?
  		#:pはid番号を自動で見つけてくる
	  	@name = Prefecture.find(params[:p]).name
	  	@lines = HeartRails::Line.list(@name)
    else
    	@lines = {"response"=>{"line"=>[]}}
    end
  end
end
