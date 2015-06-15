#Represents a block with live or dead state
class Cell

  attr_reader :alive

  def initialize(state)
    @alive = state
  end

  def dead?
    !@alive
  end

  def next_gen_alive(count)
    (greater_than_or_equal_two(count) &&  less_than_or_equal_three(count) && @alive) ||
     (equal_to_three(count) && dead?)
  end

  def greater_than_or_equal_two(count)
    count >= 2
  end

  def less_than_or_equal_three(count)
    count <= 3
  end

  def equal_to_three(count)
    count == 3
  end
  
end