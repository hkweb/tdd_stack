class Stack

  def initialize
    @buff = []
    @size = 0
  end

  def is_empty?
    unless @buff.first
      true
    else
      false
    end
  end
  def size
    @size
  end
  def push(v)
    return RangeError if @size >= 16
    @buff << v
    @size += 1
  end
  def pop
    @push.delete
    @push.last
  end
end
