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

  it 'should return all summary reports as a string' do
    @movies.get_summary_short.each do |s|
      expect(s).to be_kind_of(String)
    end
  end

  it 'should return all publication dates as a string' do
    @movies.get_publication_date.each do |d|
      expect(d).to be_kind_of(String)
    end
  end

  it 'All dates should not be greater then 10 characters' do @movies.get_publication_date.each do |d|
    expect(d.length).not_to be > 10
  end
end

it 'should return all opening dates as a string' do
  @movies.get_opening_date.each do |od|
    expect(od).to be_kind_of(String) |  be_nil
  end
end

#This test has found some inconsistend data
it 'All dates should not be greater then 10 characters' do @movies.get_opening_date.each do |d|
  if !(d == nil)
   expect(d.length).not_to be > 10
  end
 end
end

it 'should return all links as object' do 
  @movies.get_link.each do |l|
    expect(l).to be_kind_of(Object)
  end
end

it 'should return all types as a string' do 
  @movies.get_type.each do |t|
    expect(t).to be_kind_of(String)
  end
end

it 'should return all urls as a string' do
  @movies.get_url.each do |u|
    expect(u).to be_kind_of(String)
  end
end

it 'should return all suggested link text to be a string' do
  @movies.get_suggested_link_text.each do |sl|
    expect(sl).to be_kind_of(String)
  end
end

it 'should return all multimedia types as a string' do
  @movies.get_suggested_link_text.each do |sl|
    expect(sl).to be_kind_of(String)
  end
end

it 'should return all multimedia srcs as a string' do
  @movies.get_src.each do |s|
    expect(s).to be_kind_of(String)
  end
end

it 'should return all multimedia width as a integer' do
  @movies.get_width.each do |w|
    expect(w).to be_kind_of(Integer)
  end
end

it 'should return all multimedia height as a integer' do
  @movies.get_height.each do |h|
    expect(h).to be_kind_of(Integer)
  end
end
it 'should return all multimedia widths as a integer' do
  @movies.get_width.each do |w|
    expect(w).to be_kind_of(Integer)
  end
end




  



  
   
   

  
 end
end

