require_relative '../lib/game_errors'

class Messages
  def self.show_welcome
    puts %(
===========================================
   TIC TAC TOE : By Sava & Kevin
===========================================
Welcome to Tic Tac Toe. Play if you dare 😈
    )
  end

  def self.get_option_from_player
    puts %(
  1. Start game
  2. Quit
    )

    print 'Choose your destiny... '
    input = gets.chomp
    input
  end

  def self.show_game(game)
    puts %{
#{game.players[:X].name} vs #{game.players[:O].name}
===========================================
#{game.board}
Instructions:
1. Each player gets a turn at the game
  - The prompt will show who's turn it is (e.g. #{game.players[:X].name}'s Turn: )
2. Enter the position you wish to mark (e.g A2)
3. Press 'q' to quit the game any time.
}
  end

  def self.get_exit_confirmation
    print 'Are you sure you want to quit? (y/n or your language 😉)'
    input = gets.chomp
    input = input.downcase
    %w[y yes ja yaaas ndio da oui].include? input
  end

  def self.show_goodbye
    puts %(
            ,-.           . .           . .
           /              | |           | |
           | -. ,-. ,-. ,-| |-. . . ,-. | |
           \  | | | | | | | | | | | |-'
            `-' `-' `-' `-' `-' `-| `-' o o
                                `-'
)
  end

  def self.show_invalid_input(input)
    puts "Input '#{input}' is invalid!"
  end

  def self.show_error(e)
    puts "Error! => #{e.message}"
  end

  def self.get_player_name(symbol)
    print "Player #{symbol}, please choose your name: "
    player_name = gets.chomp
  end

  def self.get_player_input(player)
    print "#{player}'s turn: "
    input = gets.chomp
    input.downcase
  end

  def self.show_winner(player)
    puts "Congratulations #{player}, you've won the game!"
  end

  def self.show_draw
    puts 'Equally matched contenders have met!'
  end

  def self.show(message)
    puts message
  end
end
