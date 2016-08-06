class Video
  extend ActiveModel::Naming
  attr_accessor :id, :title, :subs, :thumbnails

  def initialize(attributes)
    @id = attributes['_id']
    @title = attributes['title']
    @subs = attributes['subscription_required']
    @thumbnails = attributes['thumbnails']
  end

  def to_model
    # You will get to_model error, if you don't have this dummy method
  end
  # You need this otherwise you get an error
  def persisted?
    false
  end
end
