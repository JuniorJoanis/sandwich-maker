class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    redirect_to sandwiches_order_path if signed_in?
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome !"
      redirect_to sandwiches_order_path
    else
      render 'new'
    end
  end
end
