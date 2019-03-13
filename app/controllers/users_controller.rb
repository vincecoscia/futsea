class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if current_user != @user
      redirect_to root_path, notice: "Sorry, but you are only allowed to view your own profile page."
    end
  end

  def create
  end

  def destroy
  end
end
