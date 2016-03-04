class SessionsController < ApplicationController

  # Otherwise Rails will helpfully clear the whole env for us and drop the
  # omniauth.auth key.
  protect_from_forgery :except => :create

  def create
    @user = User.from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
