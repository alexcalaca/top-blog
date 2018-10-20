class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(users_params)
    
    if @user.save
      flash[:success] = "Welcome to the Top Blog #{@user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(users_params)
      flash[:success] = "Updated successfully"
      redirect_to articles_path
    else
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  def users_params
    params.require(:user).permit(:username, :email, :password)
  end
  
end