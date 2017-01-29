class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit]
  before_action :correct_user,   only: [:edit]
  before_action :admin_user, only: [:destroy, :index]

  def show
    @user = User.find(params[:id])
  end

  def new
    if logged_in?
      redirect_to articles_path
    else
      session[:user_params] ||= {}
      @user = User.new(session[:user_params])
      @user.current_step = session[:user_step]
    end
  end

  def create
    session[:user_params].deep_merge!(params[:user]) if params[:user]
    @user = User.new(session[:user_params])
    @user.current_step = session[:user_step]
    if @user.firstname.present?
      if params[:back_button]
        @user.previous_step
      elsif @user.current_step == 'email_pass'
        if @user.valid?
          @user.next_step
        end
      elsif @user.last_step?

        @user.save if @user.valid?
      else
        @user.next_step
      end
      session[:user_step] = @user.current_step
    end
    if @user.new_record?
      render "new"
    else
      session[:user_step] = session[:user_params] = nil
      log_in @user
      redirect_to articles_path
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
    if logged_in?
      @user = current_user
    else
      redirect_to root_url
    end
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Gebruiker verwijderd"
    redirect_to specialists_url
  end

  private

    def user_params
      params.require(:user).permit(:firstname, :email, :password)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user) or current_user.admin?
    end
end