class UsersController < ApplicationController
  before_filter :must_be_logged_in, :only => [:new]
  
  def show
    @user = User.find(params[:id])
  end

  def new
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
