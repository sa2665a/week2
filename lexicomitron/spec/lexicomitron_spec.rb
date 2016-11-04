require 'spec_helper'

RSpec.describe Lexiconomitron do
describe Lexiconomitron do 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
end
end

 describe "shazam" do
    it "returns an array" do
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to be_kind_of(Array)
  end
    it "returns an array of strings without t" do
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    end
  end

