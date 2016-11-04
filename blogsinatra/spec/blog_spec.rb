require 'spec_helper'
require 'date'

RSpec.describe Blog do

  describe 'Blog class' do
  let(:blog) { Blog.new }
  let(:blog_Simon) do
    Post.new('postSimon','postSimon text',Date.new(2016, 10, 31))
  end

  let(:blog_Victoria) do
    Post.new('post Victoria','post Victoria body',Date.new(2016, 11, 2))
  end

  describe "post method return array of posts added" do
    it "has to show the array with the posts" do
      expect(blog.add_post(blog_Simon)).to eq([blog_Simon])
    end
  end

  describe "posts show in order of date, the latest post being first" do 
    it "has to put the latest post first" do
      blog.add_post(blog_Simon)
      blog.add_post(blog_Victoria)
      expect(blog.latest_posts).to eq([blog_Victoria,blog_Simon])
    end
  end

end
end




