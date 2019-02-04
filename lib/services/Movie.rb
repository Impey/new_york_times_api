require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load('.env')

class Movie
  include HTTParty 

  base_uri 'https://api.nytimes.com'

  def getdata(movies)
   @movie = JSON.parse(self.class.get("/svc/movies/v2/reviews/search.json?query=#{movies}&api-key=#{ENV['API_KEY']}").body)
  end

  def get_status
    array=[]
     array << @movie['status']
   array
  end

  def get_copyright
    @movie['copyright']
  end

  def get_results
    @movie['results']
  end
  
  def get_display_title
    array = []
    get_results.each do |t|
     array << t['display_title']
    end
    array
  end

  def get_mpaa_rating
    array = []
    get_results.each do |m|
      array <<m['mpaa_rating']
    end
    array
  end

  




end

