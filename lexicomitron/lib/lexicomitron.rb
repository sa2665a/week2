
#itineration1

class Lexiconomitron

	def eat_t(text)
		text.gsub!(/[t]/i,'')
	end

end

def shazam(input)
    resultsarray = []
    input.each do |word|
      resultsarray << eat_t(word).reverse
    end
    resultsarray_final = firstlast(resultsarray)
  end