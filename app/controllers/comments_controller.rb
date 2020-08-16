class CommentsController < ApplicationController

  before_action :set_category, only: [:new, :create, :destroy]


  def new
    @station = Station.find(params[:station_id])
    @comment = @station.comments.new
  end



	def create
  	@station = Station.find(params[:station_id])
  	@comment = current_user.comments.new(comment_params)
  	@comment.station_id = @station.id
  	if @comment.save
      redirect_to root_path
    #  station_path(@station.id)
    # else
    #   redirect_to root_path
    end
  end

  # def destroy
  #   @books = Book.find(params[:book_id])
  #   @comment = BookComment.find_by(id: params[:id], book_id: params[:book_id])
  #   @comment.destroy
  # end


	private
  	def comment_params
  	  params.require(:comment).permit(:body, :category_id)
  	end

    def set_category
      @categries = Category.all
    end
end



