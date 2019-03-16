class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    self.take_turn
    until self.game_over == true
      self.take_turn
    end
    self.game_over_message
    self.reset_game

  end

  def take_turn
    self.show_sequence
    self.require_sequence
    self.round_success_message
    self.sequence_length += 1
  end

  def show_sequence

    self.add_random_color

    self.seq.each do |color|
      puts "#{color}"
      sleep(1.5)
      system("clear")
      sleep(1)
    end

  end

  def require_sequence

    puts "Enter the sequence one color at a time:"

    guess_seq = self.seq.dup
    correct = true
    until guess_seq.length == 0 || correct == false
      guess = gets.chomp
      if guess == guess_seq[0]
        guess_seq.shift
      else
        correct = false
        self.game_over = true
      end
    end

    return correct

  end

  def add_random_color
    color = COLORS.sample
    self.seq << color
  end

  def round_success_message
    puts "YOU WIN"
    sleep(1.5)
    system("clear")
  end

  def game_over_message
    puts "YOU LOSE"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


if __FILE__ == $0
  game = Simon.new
  game.play
end