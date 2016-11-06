class CookingController < ApplicationController
  def index
    user_input = params["food"]
    if user_input
      url = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=UCJFp8uSYCjXOMnkUyb3CQ3Q&maxResults=4&order=relevance&q=#{user_input}&key=#{ENV['YOUTUBE_TASTY_ID']}"
      @videoinfo = HTTParty.get(url)
      @video = @videoinfo["items"]
    end
  end
end
