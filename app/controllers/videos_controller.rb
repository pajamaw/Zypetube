require 'pry'
class VideosController < ApplicationController

  def index
    zype = ZypeService.new

    #practicing for authetication turn firewall
    #@videos = zype.create_videos_from_api.select{|vid| vid.subs == true}
    #binding.pry
    #actual method
    @videos = zype.create_videos_from_api
  end

  def show
    zype = ZypeService.new
    videos = zype.create_videos_from_api
    @video = videos.detect{ |vid| vid.id == params['id']}
    if @video.subs && !logged_in?
      flash[:alert] = "You Must Login or Subscribe to continue"
      redirect_to sessions_path
    #binding.pry
    end
  end

end
