class Stack

  def initialize
    @top = nil
  end

  def push value
    @top = Item.new(value).point(@top)
  end

  def pop
    return nil if !@top
    value = @top.value
    @top = @top.next
    value
  end

  class Item

    attr_accessor :value
    attr_reader :next

    def initialize value
      @value = value
      @next = nil
    end

    def point item
      @next = item
      self
    end

  end

end
