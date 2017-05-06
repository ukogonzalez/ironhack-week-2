require_relative '../app/classtask.rb'

RSpec.describe Task do
	describe "complete?" do
		it "back return the state of task" do
		  @task = Task.new("Buy the milk")
		  expect(@task.complete?).to eq(false)
		end
	end

  describe "make_incomplete" do

    it "should do the incomplete task" do
      @task = Task.new("Haz la cama")
      @task.complete!
      expect(@task.make_incomplete!).to eq(false)
    end
  end
end

RSpec.describe TodoList do
  describe "add_task" do
    it "add task to the todolist" do
      todo_list = TodoList.new
      task1=Task.new("Trabaja")
      todo_list.add_task(task1)
      expect(todo_list.tasks.length).to eq(1)
    end
  end
end
