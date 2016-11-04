class MoviesSearch
    def initialize(movies)
        @movies = movies
    end

  def filter(amount)
    filter = []
    index = 0

    while filter.size < amount 
        movie = @movies[index]
        if movie.poster != nil
            filter.push(movie)
        end
        index += 1   
    end
    filter
 end




end
