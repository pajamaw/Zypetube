class VideosController < ApplicationController

  def index
    zype = ZypeService.new
    @videos = zype.create_videos_from_api
  end




end
