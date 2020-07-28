class SessionsController < ApplicationController
  
  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = 'you are signed in'
      session[:user_id] = @user.id
      redirect_to '/users'
    else
      flash[:alert] = 'signin was unsuccesfull, please try again'
      redirect_to '/signin'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Signed Out'
    redirect_to '/'
  end

end