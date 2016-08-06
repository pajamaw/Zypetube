class Video < ApplicationRecord

  def get_video
    conn = Faraday.new(:url => 'https://api.zype.com/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
    conn.get
  end

end
