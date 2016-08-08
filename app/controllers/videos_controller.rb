require 'pry'
class VideosController < ApplicationController

  def index
    zype = ZypeService.new
    @page = params['page'] ||= '1'
    @videos = zype.create_videos_from_api(@page)
  end

  def show
    zype = ZypeService.new
    videos = zype.create_videos_from_api(params['page'])
    @video = videos.detect{ |vid| vid.id == params['id']}
    if @video.subs && !logged_in?
      flash[:alert] = "You Must Login or Subscribe to continue"
      redirect_to '/sessions'
    end
  end

end
