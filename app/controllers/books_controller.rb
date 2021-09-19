class BooksController < ApplicationController
  def create
  end
  
  def index
    @user = current_user
  end
  
  def show
  end
  
  def edit
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
