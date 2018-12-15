class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(users_params)

    if @user.save
      flash[:notice] = "Dados salvos com sucesso!"
      redirect_to musics_path
    else
      flash[:danger] = "Algo deu errado..."
      redirect_to new_user_path
    end
  end

  # TODO: Don't accept duplicate emails

  private
  def users_params
    params.require(:user).permit(:name, :email, :age)
  end
end
