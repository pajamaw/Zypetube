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
    puts !logged_in?
    puts @video
    if @video.subs && !logged_in?
      puts @video.subs
      puts !logged_in?
      ##session[:video_id] = "/videos/#{@video.id}"
      flash[:alert] = "You Must Login or Subscribe to continue"
      redirect_to '/sessions'
    #binding.pry
    end
  end

end
