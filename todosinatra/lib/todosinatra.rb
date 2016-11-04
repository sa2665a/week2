

class Task
    attr_reader :content, :id, :create_at
    @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @complete= false
    @create_at= Time.now
  end

	def completed?
		@complete
	end

	def complete!
		@complete=true
	end

  def make_incomplete!
    @complete=false
  end

   def update_content!(content)
      @content = content
    end

end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Walk the dog")
puts task2.id
# 2


