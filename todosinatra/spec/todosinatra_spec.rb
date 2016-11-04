require "spec_helper"
require 'pry'

RSpec.describe Task do 
	before(:each) do 
		#aqui puede ir "content" en task
		@task = Task.new("Buy the milk")
		@task2= Task.new("Walk the dog")
	end
	
	describe "complete?" do
		it "return the task if its completed or not before(:each)" do
		expect(@task.completed?).to eq(false)
		end
	end

	describe "complete!" do
     it "change the task complete to true" do
       expect(@task.complete!).to eq(true)
     end
  end

	describe "make_incomplete!" do
     it "change the task incomplete " do
       expect(@task.make_incomplete!).to eq(false)
     end
  end

  describe "update_content!" do
    it "update the task's text" do
     @task.update_content!("Buy the milk")
     expect(@task.content).to eq("Buy the milk")
    end
  end

end

