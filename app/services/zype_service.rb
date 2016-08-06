class ZypeService
  def get_json_from_api
    resp = Faraday.get('https://api.zype.com/videos?') do |req|
      req.params['app_key'] = ENV['ZYPE_APP_KEY']
      req.params['per_page'] = '10'
    end
    JSON.parse(resp.body)["response"]
  end

  def create_videos_from_api
    get_json_from_api.map do |vid|
       Video.new(vid)
    end
  end

end
