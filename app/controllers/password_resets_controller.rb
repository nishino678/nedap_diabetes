class PasswordResetsController < ApplicationController
  before_action :get_user,         only: [:edit, :update]
  before_action :valid_user,       only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]    

  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "Email verstuurd met instructies om je wachtwoord te resetten"
      redirect_to root_url
    else
      flash.now[:danger] = "Email adres niet gevonden"
      render 'new'
    end
  end

  def edit
  end

  def update
    if params[:user][:password].empty?                  
      @user.errors.add(:password, "Mag niet leeg zijn")
      render 'edit'
    elsif @user.update_attributes(user_params)          
      log_in @user
      flash[:success] = "Wachtwoord is gereset."
      redirect_to @user
    else
      render 'edit'                                     
    end
  end

  private

    def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end

    # Before filters

    def get_user
      @user = User.find_by(email: params[:email])
    end

    # Confirms a valid user.
    def valid_user
      unless (@user)
        redirect_to root_url
      end
    end

    # Checks expiration of reset token.
    def check_expiration
      if @user.password_reset_expired?
        flash[:danger] = "Wachtwoord reset is verlopen."
        redirect_to new_password_reset_url
      end
    end
end