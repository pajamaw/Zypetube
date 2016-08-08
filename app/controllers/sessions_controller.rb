class SessionsController < ApplicationController
  skip_before_filter :store_return_to

  def new
  end

  def create
    new_zype_session = ZypeService.new

    session[:token] = new_zype_session.authenticate!(ENV["ZYPE_CLIENT_ID"], ENV["ZYPE_CLIENT_SECRET"], params['username'], params['password'])
    ##puts session[:token]
    redirect_back_or_root
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
