class Post
	attr_accessor :title, :text 
	attr_reader :date
 def initialize(title, text,date)
 	@title =title
 	@text=text
 	@date=date

 end
end
