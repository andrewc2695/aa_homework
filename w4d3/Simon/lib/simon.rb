require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1

  end

  def play
    # add_random_color
    p "Select difficulty from easy to hard 1 - 10"
    time = gets.chomp
    time = time.to_i
    take_turn(time)
    while @game_over == false
      take_turn(time)
    end
    game_over_message
    reset_game
  end

  def take_turn(time)
    # debugger
    show_sequence(time)
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence(time)
    add_random_color
    print @seq
    sleep   @sequence_length/(time * 1.0)
    system("clear")
  end

  def require_sequence
    p "enter all colors seperated by a space"
    input = gets.chomp
    # debugger
    if input.split(" ") != @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p 'Sequence repeated succsefully! Next round!'
  end

  def game_over_message
    print 'Wrong sequence entered. Correct sequence was:'
    print @seq
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end

s  = Simon.new
s.play