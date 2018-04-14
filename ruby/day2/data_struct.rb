class Queue
  attr_accessor :queue

  def initialize(queue=[])
    @queue = queue
  end

  def push(e)
    queue.unshift(e)
  end

  def pop
    queue.pop
  end
end

queue = Queue.new
queue.push("a")
queue.push("b")
queue.push("c")
puts queue.pop
puts queue.queue
