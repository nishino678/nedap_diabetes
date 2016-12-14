class UsersController < ApplicationController
  #before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
 
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Nedap diabetes app!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profiel bijgewerkt"
      redirect_to @user
    else
      render 'edit'
    end
  end 

  def favorites
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end