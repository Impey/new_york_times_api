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
     array << m['mpaa_rating']
    end
    array
  end

  def get_critics_pick 
    array = []
    get_results.each do |c|
      array <<c['critics_pick']
    end
    array
  end

  def get_byline
    array = []
    get_results.each do |b|
      array << b['byline']
    end
    array
  end

  def get_review
    array = []
    get_results.each do |h|
      array << h['headline']
    end
    array
  end

  def get_summary_short
    array = []
    get_results.each do |s|
      array << s['summary_short']
    end
    array
  end

  def get_publication_date
    array = []
    get_results.each do |d|
      array << d['publication_date']  
    end
    array
  end

  def get_opening_date
    array = []
    get_results.each do |od|
      array << od['opening_date']  
    end
    array
  end

  def get_date_updated 
    array = []
    get_results.each do |du|
      array << du['date_updated']
    end
    array
  end

  def get_link
    array = []
    get_results.each do |l|
      array << l['link']
    end
    array
  end
  
  def get_type
    array = []
    get_link.each do |t|
      array << t['type']
    end
    array
  end

  




end

