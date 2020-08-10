class StationsController < ApplicationController
  def index
  	if params[:line].present?
  	@stations = HeartRails::Station.list(params[:line])
    else
    	@stations = []
    end
  end
end
