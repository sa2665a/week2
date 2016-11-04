require 'spec_helper'
require 'date'

RSpec.describe Twit do

  describe "popular" do
    it "has more than one fav" do
      twit = Twit.new("message")
      twit.favs += 1
      expect(twit.popular?).to be >= 1
    end
  


