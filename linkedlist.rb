class LinkedList

  def initialize
    @first = nil
  end

  def first_item
    @first
  end

  def first
    @first.value
  end

  def last_item
    next_item = @first
    while next_item.next
      next_item = next_item.next
    end
    next_item
  end

  def last
    last_item.value
  end

  def append value
    if !@first
      @first = Item.new(value)
      return self
    end
    self.last_item.point Item.new(value)
    self
  end

  def prepend value
    @first = Item.new(value).point(@first)
    self
  end

  def get_item index
    next_item = @first
    index.times do
      next_item = next_item.next
    end
    next_item
  end

  def get index
    return get_item(index).value
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
