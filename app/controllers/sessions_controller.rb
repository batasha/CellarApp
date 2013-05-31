class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_login(params[:session][:login])

    if @user && @user.authenticate(params[:session][:password])
      @user.new_session_token
      session[:session_token] = @user.session_token
      redirect_to :root
    else
      flash[:error] = "Invalid login/password"
      render :new
    end
  end

  def destroy
    session.delete(:session_token)
    redirect_to 'login'
  end
end