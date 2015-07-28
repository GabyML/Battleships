require_relative 'ship'

class Board

  attr_reader :cells

  def initialize
    @cells = []
  end

  def place (ship)
    @cells << ship.pos
  end

  def empty?
    @cells.empty?
  end

  def fire(pos)
    return 'Hit' if @cells.include? (pos)
    return 'Miss'
  end
end

