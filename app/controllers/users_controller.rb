class UsersController < ApplicationController
  def new
    @user = User.new
    @register = true
  end

  def create
    @user = User.create(users_params)

    if @user.save
      redirect_to musics_path
    else
        flash[:danger] = "#{@user.errors.full_messages}"
      redirect_to new_user_path
    end
  end

  # TODO: Don't accept duplicate emails

  private
  def users_params
    params.require(:user).permit(:name, :email, :age)
  end
end
