require 'spec_helper'

describe Moive_reivew do
 context 'requesting information from the new york times api' do 

  before(:all) do 
    @movies = Moive_reivew.new.movie_search


  end
 
end