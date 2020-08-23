class HomeController < ApplicationController
  def top
  	@comments = Comment.all
  end

  def about
  end
end
