require_relative 'board'

class Ship

  attr_reader :pos

  def initialize(position)
  	@pos = ''
  	letter = position[0]
    nums = position[1..-1]
    fail 'Outside the board' unless letter =~ /^[A-J]/
    fail 'Outside the board' unless nums.to_i <= 10
    @pos << position.to_s
  end

  def receive_hit(target)
  	return 'Hit' if target.to_s == position.to_s
  	return 'Miss'
  end


end
