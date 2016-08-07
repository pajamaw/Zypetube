class SessionsController < ApplicationController

  def new
  end

  def create
    new_zype_session = ZypeService.new
    session[:token] = new_zype_session.authenticate!(ENV["ZYPE_CLIENT_ID"], ENV["ZYPE_CLIENT_SECRET"], params['username'], params['password'])

    redirect_to '/'
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
