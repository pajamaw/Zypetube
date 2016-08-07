class Video
  extend ActiveModel::Naming
  attr_accessor :id, :title, :subs, :thumbnails, :description, :short_description

  def initialize(attributes)
    @id = attributes['_id']
    @title = attributes['title']
    @subs = attributes['subscription_required']
    @thumbnails = attributes['thumbnails']
    @published_at = attributes['published_at']
    @description = attributes['description']
    @short_description = attributes['short_description']
  end

  def to_model
    # You will get to_model error, if you don't have this dummy method
  end
  # You need this otherwise you get an error
  def persisted?
    false
  end
end
