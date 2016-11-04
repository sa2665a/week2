require 'spec_helper'
require 'date'

RSpec.describe Twit do
  
  describe ".status" do
    it "is visible when date is between start and end" do
      start_date = Date.today - 1
      end_date = Date.today + 1
      twit = Twit.new("message", start_date, end_date)
      expect(twit.status).to eq("visible")
    end
    
    it "is invisible when date is not between start and end" do
      start_date = Date.today + 1
      end_date = Date.today + 10
      twit = Twit.new("message", start_date, end_date)
      expect(twit.status).to eq("invisible")
    end
  end

  
  describe ".hashtags" do
    it "extracts the correct amount of hashtags" do
      msg = "chicos y chicas no es chiques #feminism, #machirulo"
      twit = Twit.new(msg)
      expect(twit.hashtags.size).to eql(2)
    end
  
    it "works for zero hashtags" do
      msg = "chicos y chicas no es chiques"
      twit = Twit.new(msg)
      expect(twit.hashtags.size).to eql(0)
    end
    
    it "returns the correct hashtgas" do
      msg = "chicos y chicas no es chiques #feminism"
      twit = Twit.new(msg)
      expect(twit.hashtags).to include("#feminism")
    end
  end

  describe "All tweets are in capital letters" do 
    it "is valid if has only capital letters" do 
      twit = Twit.new("TWIT EXAMPLE")
      expect(twit.check_cap_lett).to eq(true)
    end

    it "is invalid if it is without capital letters" do 
      twit = Twit.new ("TWIT Example")
      expect(twit.check_cap_lett).to eq(false)
    end

  end
end






