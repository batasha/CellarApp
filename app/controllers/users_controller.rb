class UsersController < ApplicationController
  def new
    @user = User.new(params[:user])
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to :root
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end