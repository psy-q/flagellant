class SessionsController < ApplicationController

  # Otherwise Rails will helpfully clear the whole env for us and drop the
  # omniauth.auth key.
  protect_from_forgery :except => :create

  def create
    user = User.from_auth_hash(auth_hash)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, :notice => 'Signed in'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
