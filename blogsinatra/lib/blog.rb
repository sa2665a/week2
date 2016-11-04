require "pry"
require 'date'

class Blog
  attr_accessor :posts
  def initialize 
    @posts= []
  end

  def add_post(post)
     @posts.push(post)
  end

  def latest_posts
    @posts.sort!{ |a, b| b.date <=> a.date }
  end

  # def publish_front_page
  #   @posts.each do |post|
  #     puts post.title
  #     puts "************"
  #     puts post.text
  #     puts "-------------"
  #   end
  # end



end
