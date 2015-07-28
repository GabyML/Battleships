require_relative 'ship'

class Board

  attr_accessor :ships

  def initialize
    @ships = []
  end

  def place (ship)
    ships << ship
  end

  def empty?
    ships.empty?
  end

  def report_sunk
    if ships.include?('false')
      return 'Not all ships are sunk'
    else
      return 'All ships are sunk'
    end
  end

  #def fire(something, position)
   # if @cells.include? (position)
    #  something.ship.hits = something.ship.hits + 1
     # something.ship.sunk = true
      #return 'Hit'
    #else
     # return 'Missed'
    #end
  #end
end

