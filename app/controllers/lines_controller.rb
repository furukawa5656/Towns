class LinesController < ApplicationController
  def index
  	if params[:p].present?
  	name = Prefecture.find(params[:p]).name
  	@lines = HeartRails::Line.list(name)
    else
    	@lines = []
    end
  end
end
