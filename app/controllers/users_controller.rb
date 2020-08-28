class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :get_user, only:[:show, :edit, :update, :close]
  before_action :check_test_acount, only:[:edit, :update, :close, :close_view]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
       redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def close_view
  end

  def close
    @user.update(is_active: "Invalid")
    reset_session
    redirect_to root_path
  end

  private
  def get_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(
      :nickname,
      :gender,
      :age_group,
      :family_structure,
      :email,
      :is_active
    )
  end

  def check_test_acount
    if current_user.email == 'test@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは<br>操作不可です。'.html_safe
    end
  end

end
