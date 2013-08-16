require 'spec_helper'

describe "Index page" do

  it "should have the content 'Pair With Me'" do
    visit '/'
    page.should have_content('Pair With Me')
  end

  it "should have results" do
    visit '/pairwithme'
    page.should have_content('#pairwithme')
  end

  it "should not have results" do
    visit '/fghj'
    page.should have_content('No results for fghj')
  end

  it "should have a time stamp"do
    visit '/'
    page.should have_content('moment')
  end
end
