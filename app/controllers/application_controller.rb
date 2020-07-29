class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!, :except => [:landing]

  helper_method :current_user
  helper_method :authenticate_admin

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authenticate_user!
    if !current_user
      flash[:alert] = "Restricted. Logged-in Users Only"
      redirect_to '/'
    end
  end

  def authenticate_admin
    if !current_user.admin
      flash[:alert] = "Restricted. Admin only"
      redirect_to '/products'
    end
  end
end
