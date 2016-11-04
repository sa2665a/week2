require 'sinatra'
require "sinatra/reloader" if development?
require 'pry'

require_relative 'lib/blog.rb'
require_relative 'lib/post.rb'


@@blog = Blog.new
post1= Post.new('postSimon','postSimon text',Date.new(2016, 10, 31))
post2= Post.new('post Victoria','post Victoria body',Date.new(2016, 11, 2))
@@blog.add_post(post1)
@@blog.add_post(post2)

get "/" do 
	@@blog.latest_posts
  erb(:index)
end

get "/post_details/:id" do
	id = params[:id].to_i
	@current_post = blog.latest_posts[id]
	erb (:postdetails)
end