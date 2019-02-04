require 'spec_helper'

describe Movie_review do
 context 'requesting information from the new york times api' do 

  before(:all) do 
    @movies = Movie_review.new.movie_search
    @movies.getdata('Aquaman')
   end

   
  it 'should return it as a hash' do 
    expect(@movies).to be_kind_of(Object)
  end
 
 end
end 
