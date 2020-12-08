require "byebug"
class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new}
    @player1 = name1
    @player2 = name2
    place_stones
    render
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      if idx < 6
        4.times {@cups[idx] << :stone}
      elsif idx > 6 && idx < 13
        4.times {@cups[idx] << :stone}
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos > 12
      raise StandardError.new "Invalid starting cup"
    elsif @cups[start_pos].empty?
        raise StandardError.new "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    # start_pos -= 1 if start_pos <= 6
    hand = @cups[start_pos]
    @cups[start_pos] = []
    idx = start_pos + 1
    until hand.empty? 
      if idx != 6 && idx != 13
        @cups[idx] << hand.pop
      elsif idx == 6 && current_player_name == @player1
        @cups[idx] << hand.pop
      elsif idx == 13 && current_player_name == @player2
        @cups[idx] << hand.pop
      end
      if hand.empty? == false
        idx += 1
        if idx > 13
          idx = 0
        end
      end
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # debugger
    if ending_cup_idx == 6 
      return :prompt
    elsif ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].length == 1
      return :switch
    else
      ending_cup_idx
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    p1_side = true
    p2_side = true
    @cups[0..5].each do |cup|
      p1_side = false if !(cup.empty?)
    end
    @cups[7..12].each do |cup|
      p2_side = false if !(cup.empty?)
    end
    return true if p1_side || p2_side
    false
  end

  def winner
    if @cups[6].length > @cups[13].length
      return player1
    elsif @cups[6].length < @cups[13].length
      return player2
    else
      return :draw
    end
  end
end
