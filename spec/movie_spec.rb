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

   it 'should return result as an array' do 
    expect(@movies.get_results).to be_kind_of(Array)
   end

   it 'should return display title as a string' do
    @movies.get_display_title.each do |t|
      expect(t).to be_kind_of(String)
    end
   end
  
 end
end 
