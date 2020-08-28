class HomeController < ApplicationController
  def top
  	@comments = Comment.all
  end

  def about
  end

  def test_acount
  	user = User.find_or_create_by!(email: 'test@example.com') do |user|
  		user.password = SecureRandom.urlsafe_base64
  	end
  	sign_in user
    redirect_to root_path, notice: 'ログインしました。'
  end
end
