class VideosController < ApplicationController

  def index
    @page = params['page'] ||= '1'
    
    zype = ZypeService.new
    @videos = zype.create_videos_from_api(@page)
  end

  def show
    @page = params[:page]

    zype = ZypeService.new
    videos = zype.create_videos_from_api(@page)
    @video = videos.detect{ |vid| vid.id == params['id']}

    if @video.subs && !logged_in?
      flash[:alert] = "You Must Login or Subscribe to continue"

      redirect_to '/sessions'
    end
  end

end
