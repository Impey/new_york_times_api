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
    array = []
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

  def get_url
    array = []
    get_link.each do |u|
      array << u['url']
    end
    array
  end

  def get_suggested_link_text
    array = []
    get_link.each do |sl|
      array << sl['suggested_link_text']
    end
    array
  end

  def get_multimedia
    array = []
    get_results.each do |m|
      array << m['multimedia']
    end
    array
  end

  def get_multimedia_type
    array = []
    get_multimedia.each do |mt|
      array << mt['type']
    end
    array
  end

  def get_src 
    array = []
    get_multimedia.each do |s|
      array << s['src']
    end
    array
  end

  def get_width 
    array = []
    get_multimedia.each do |w|
      array << w['width']
    end
    array
  end
  
  def get_height
    array = []
    get_multimedia.each do |h|
      array << h['height']
    end
    array
  end
  
    

  




end

