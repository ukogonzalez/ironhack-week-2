class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete!
      @complete = true
    end

    def complete?
      @complete
    end

    def make_incomplete!
      @complete = false
    end

    def update_content
      @updated_at = Time.now
    end

end

class TodoList
  attr_reader :tasks
  def initialize
    @tasks = []
  end
  # def tasks
  #   @tasks
  # end
  def add_task(task)
    @tasks.push(task)
  end


end
