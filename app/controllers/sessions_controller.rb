class SessionsController < ApplicationController
  skip_before_filter :store_return_to

  def new
  end

  def create
    new_zype_session = ZypeService.new
    session[:token] = new_zype_session.authenticate!(ENV["ZYPE_CLIENT_ID"], ENV["ZYPE_CLIENT_SECRET"], params['username'], params['password'])
    if session[:token]
      flash[:notice] = "You have been logged in"
      redirect_back_or_root
    else
      flash[:alert] = "Incorrect Login"
      render 'new'
    end
  end

  def destroy
    reset_session
    flash[:notice] = "You have been logged out"

    redirect_to root_path
  end

end
