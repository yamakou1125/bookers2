class UsersController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books.all
  end 

  def edit
    @user = current_user
    if @user == current_user
    render "edit"
    else
    redirect_to new_user_session_path
    end
  end
  
  def update
    @user = User.find(params[:id])
   if @user.update(user_params)
    redirect_to user_path(@user.id), notice: "You have updated user successfully."
   else
     render :edit
   end
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
