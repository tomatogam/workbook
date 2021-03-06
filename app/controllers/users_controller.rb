class UsersController < ApplicationController

before_action :logged_in_user, only: [:edit, :update]
before_action :correct_user,   only: [:edit, :update]

  def show
    @user = User.find_by(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      remember @user
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)
    end

  # beforeアクション
  
  # 正しいユーザーかどうか確認
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # 管理者かどうかを確認
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
end
