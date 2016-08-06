class VideosController < ApplicationController

  def index
    zype = ZypeService.new
    @videos = zype.create_videos_from_api
  end

  def show
    @vid_id = params['id']
    @vid_subs = params['subs']
  end

end
