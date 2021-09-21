class UsersController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end 

  def edit
  end
  
  private

  def user_params
    params.require(:user).permit(:name)
  end
  
end
