class UsersController < ApplicationController

  def log_in
  end

  def new
    @user = User.new
  end

  def create
    user = User.create( user_params)
    if user.save
      redirect_to log_in_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def profile
    authenticate!
    current_user
    @menu_item = MenuItem.new
    @menu_items = MenuItem.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
