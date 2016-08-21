class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_filter :store_return_to

  def logged_in?
    !!session[:token]
  end

  private
    def store_return_to
      session[:return_to] = request.fullpath
    end

    def redirect_back_or_root
      redirect_to(session[:return_to] || '/')
      session[:return_to] = nil
    end

end
