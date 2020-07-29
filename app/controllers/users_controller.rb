class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Sign up was successful!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "sign-up failed, please try again"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def update
    @user = User.find(params[:id])
    # binding.pry
    if @user.update(update_params)
      render :show
      # redirect_to user_path
      flash[:notice] = "update was succesfull"
    else
      flash[:alert] = 'something went wrong, try again'
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:password, 
                                   :password_confirmation, 
                                   :first_name, 
                                   :last_name, 
                                   :is_mentor, 
                                   :is_admin, 
                                   :phone, 
                                   :email, 
                                   :city, 
                                   :state, 
                                   :description)
    end

    def update_params
      params.require(:user).permit(:first_name, 
                                    :last_name, 
                                    :is_mentor,  
                                    :phone, 
                                    :email, 
                                    :city, 
                                    :state, 
                                    :description)
    end

end