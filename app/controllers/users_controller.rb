class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end
end
