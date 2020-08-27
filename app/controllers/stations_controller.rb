class StationsController < ApplicationController
  def index
    #駅の最新情報を取るためにAPIからデータ取得
  	if params[:line].present?
  	@stations = HeartRails::Station.list(params[:line])
    #@stations = Station.where(line_id: params[:line_id])
    @line = params[:line]
    else
    	@stations = []
    end
  end

  def show
  	@station = Station.find_by(x: params[:x].to_f, y: params[:y].to_f)
    @comments = @station.comments
    if params[:category_id].present?
      @comments = @comments.where(category_id: params[:category_id].to_i)
      #検索タグ、カテゴリIDカラムの中でパラメーターのカテゴリIDが入っているのを探す
    end
  end
end
