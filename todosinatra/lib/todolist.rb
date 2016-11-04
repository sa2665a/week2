class TodoList
    attr_reader :tasks
    def initialize (task)
        @tasks =[]
    end

		def add_task(task)
  		@tasks<<task
  	end

  	def delete_task(task_id)
  		@tasks.delete_if {|task| task.id == task_id.to_i}
  	end

  	def find_task_by_id(task_id)
  		 @tasks.find {|task| task.id == task_id.to_i}
  	end

end
