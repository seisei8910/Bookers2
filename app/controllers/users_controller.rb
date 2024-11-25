class UsersController < ApplicationController
  def show
    @user = current_user
    @book = Book.new
  end

  def edit
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end
end
