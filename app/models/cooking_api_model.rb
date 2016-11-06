class CookingApi
  def self.get_foodvideo(fooditem)
    HTTParty.get("https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=UCJFp8uSYCjXOMnkUyb3CQ3Q&maxResults=&order=relevance&q=#{fooditem}&key=THEKEYGOESHERE").parsed_response
  end
end
