# frozen_string_literal: true

# Print to terminal and display team information
class View
  def self.header(region)
    puts "=======  #{region} TABLE  ======="
    puts '# |TEAM| |WIN-LOSS| |WIN%| |STREAK|'
    puts '=========================='
  end

  def self.display_teams(team, streak_index)
    puts "#{team[0]}| #{team[1]} | #{team[2]} | #{team[3]} |#{team[streak_index]}|"
  end

  def self.program_view
    puts 'Which league standings would you like to view?'
    puts '1 - EU - European LEC'
    puts '2 - NA - North American LCS'
    puts '3 - CN - Chinese LPL'
    puts '4 - KR - Korean LCK'
    puts '5 - View all Leagues'
    puts '6 - Exit program'
    print '>'
    gets.chomp
  end
end
