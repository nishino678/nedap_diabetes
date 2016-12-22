class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to articles_path
    else
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or articles_path
    else
      if user && User.find_by(email: params[:session][:email].downcase)
        flash.now[:danger] = 'Ongeldig wachtwoord.'
        render 'new'
      else
        flash.now[:danger] = 'Gebruiker niet gevonden.'
        render 'new'
      end
    end
   end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end