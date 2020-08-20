class StationsController < ApplicationController
  def index
  	if params[:line].present?
  	@stations = HeartRails::Station.list(params[:line])
    else
    	@stations = []
    end
  end

  def show
  	@station = Station.find_by(x: params[:x].to_f, y: params[:y].to_f)
    @comments = @station.comments
  end
end
