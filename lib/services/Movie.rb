require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load('.env')

class Movie
  include HTTParty 

  base_uri 'https://api.nytimes.com'

  def getdata
   @movie = JSON.parse(self.class.get("/svc/movies/v2/reviews/search.json?query=aquaman&api-key=#{ENV['API_KEY']}").body)
  end

  def get_status
   @move['status']
  end

  




end
