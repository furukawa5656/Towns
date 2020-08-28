class HomeController < ApplicationController
  def top
  	@comments = Comment.all
  end

  def about
  end

  def test_acount
    testuser = User.guest
  	sign_in testuser
    redirect_to root_path
  end
end
