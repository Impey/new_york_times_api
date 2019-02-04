require 'spec_helper'

describe Movie_review do
 context 'requesting information from the new york times api' do 

  before(:all) do 
    @movies = Movie_review.new.movie_search
    @movies.getdata('star')
   end
   
   it 'should return it as a hash' do 
    expect(@movies).to be_kind_of(Object)
   end

   it 'should return status as ok' do 
    @movies.get_status.each do |s|
      expect(s).to eq 'OK'
    end
  end

   it 'should return copyright as a string' do
    expect(@movies.get_copyright).to be_kind_of(String)
   end

   it 'should contain (c) on copyright key' do
    expect(@movies.get_copyright).to include "(c)"
   end

   it 'should return result as an array' do 
    expect(@movies.get_results).to be_kind_of(Array)
   end

   it 'should return all display titles as a string' do
    @movies.get_display_title.each do |t|
      expect(t).to be_kind_of(String)
    end
   end
   
   it 'should return all mpaa_rating as string' do
    @movies.get_mpaa_rating.each do |m|
      expect(m).to be_kind_of(String)
    end
   end

   it 'should return all critic picks as Integer' do
    @movies.get_critics_pick.each do |c|
      expect(c).to be_kind_of(Integer)
    end
  end

  it 'should return all byline as a String' do
    @movies.get_byline.each do |b|
      expect(b).to be_kind_of(String)
    end
  end

  it 'should return all headline as a string' do
    @movies.get_review.each do |h|
      expect(h).to be_kind_of(String)
    end
  end

  it 'should return all summary reports as strings' do
    @movies.get_summary_short.each do |s|
      expect(s).to be_kind_of(String)
    end
  end
  



  
   
   

  
 end
end

