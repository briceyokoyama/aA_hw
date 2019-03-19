require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |num|
      @cups[num] = Array.new(4, :stone)
    end
    (7..12).each do |num|
      @cups[num] = Array.new(4, :stone)
    end
  end

  def valid_move?(start_pos)

    if start_pos < 0 || start_pos >= 13 || start_pos == 6
      raise 'Invalid starting cup' 
    elsif @cups[start_pos].empty?
      raise 'Starting cup is empty'
    else
      return true
    end
  end

  def make_move(start_pos, current_player_name)
    in_hand = @cups[start_pos].dup

    @cups[start_pos].clear
    cur_pos = start_pos

    until in_hand.length == 0
      cur_pos += 1
      cur_pos %= @cups.length
      if (@name1 == current_player_name && cur_pos == 13) || (@name2 == current_player_name && cur_pos == 6)

      else
        @cups[cur_pos] << in_hand.shift
      end
    end

    self.render
    next_turn(cur_pos)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].one?
      return :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
      return true
    else
      return false
    end
  end

  def winner
    if @cups[6].length > @cups[13].length
      @name1
    elsif @cups[6].length < @cups[13].length
      @name2
    else
      :draw
    end
  end
end
