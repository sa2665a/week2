require_relative "../lib/todolist.rb"
require_relative "../lib/todosinatra.rb"


RSpec.describe TodoList do 
	before(:each) do 
		@todo_list = TodoList.new("play with friends")
		@task = Task.new("Buy the milk")
		@task2=Task.new("Buy the milk1")
	end

# We should have an add_task method for our todo list, that takes a parameter
# of a task, and adds it to our list of tasks
	describe "add task to our todo List" do
		it "takes a parameter of a task and adds it to the list of tasks" do
			@todo_list.add_task(@task)
			expect(@todo_list.tasks).to eq([@task])
		end
	end

# Create a method to delete a Task by its ID. Why its ID you may ask? Because it
# uniquely identifies all of the tasks! Say I have two tasks, both called
#  "Walk the dog". One is for this Thursday, and one is for next Thursday. If I 
#  only want to delete one of those tasks, then I can't just delete it by
#   it's name.
	describe "delete task by its ID" do 
		it "deletes tasks with unique id" do
			@todo_list.add_task(@task)
			@todo_list.add_task(@task2)
			@todo_list.delete_task(@task.id)
      expect(@todo_list.tasks).to eq([@task2])
    end 
	end

	# Create a find_task_by_id method in the todolist that will go through the 
	# list of tasks, and try to find a specific task. This method will be called
	#  on an instance of a TodoList, and will be passed an ID.

	describe ".find_task_by_id" do 
		it "finds a task by its unique id" do
			@todo_list.add_task(@task)
			@todo_list.add_task(@task2)
			id = @task.id
			expect(@todo_list.find_task_by_id(id)).to eq(@task)
		end
	end
	


end


