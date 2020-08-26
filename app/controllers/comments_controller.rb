class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: [:new, :create]
  # before_action :cannot_comment_sama_station

  def new
    @station = Station.find(params[:station_id])
    @comment = @station.comments.new
    if Comment.exists?(user_id: current_user.id, station_id: @station.id)
      redirect_to station_path(id: @station, x: @station.x, y:@station.y)
    end
  end

	def create
  	@station = Station.find(params[:station_id])
  	@comment = current_user.comments.new(comment_params)
  	@comment.station_id = @station.id
    unless Comment.exists?(user_id: current_user.id, station_id: @station.id)
    	if @comment.save
        redirect_to station_path(id: @station, x: @station.x, y:@station.y)
      else
        render :new
      end
    else
      flash.now[:alert] = "口コミは各駅に1個までです。"
      render :new
    end
  end

	private
  	def comment_params
  	  params.require(:comment).permit(:body, :category_id)
  	end

    def set_category
      @categries = Category.all
    end
end



