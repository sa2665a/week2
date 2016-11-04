require 'sinatra'
require "sinatra/reloader" if development?
require 'pry'
require 'imdb'

require_relative './lib/movielover'

get "/" do
	erb (:index)
end

post "/game" do
	@title = params[:title]
	search = Imdb::Search.new(@title)
  movie_filter=MoviesSearch.new(search.movies)
    @results = search.movies.size
    @movies= movie_filter.filter(10)
  	@year = @movies[rand(@movies.size)].year
	erb(:game)
end




