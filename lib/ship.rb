require_relative 'board'

class Ship

  attr_reader :pos
  attr_accessor :hits

  def initialize(position)
    @pos = position
    @hits = 0
  end

  def pos
    letter = @pos[0]
    nums = @pos[1..-1]
    fail 'Outside the board' unless letter =~ /^[A-J]/
    fail 'Outside the board' unless nums.to_i <= 10
  	@pos
  end

  def receive_hit(target) #change this if expression
  	if target.to_s == self.pos
  		self.hits = self.hits + 1
  		return 'Hit'
  	else
  		return 'Missed'
  	end
  end

  def 


end
