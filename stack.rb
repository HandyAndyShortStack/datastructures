require "./linkedlist.rb"

class Stack < LinkedList

  def push value
    prepend value
  end

  def pop_item
    return nil if !@first
    item = @first
    @first = @first.next
    item
  end

  def pop
    pop_item.value
  end

end
