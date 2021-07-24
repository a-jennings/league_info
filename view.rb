class View
  def initialize
  end

  def self.header(region)
    puts "=========#{region} TABLE========="
    puts "# |TEAM| |WIN-LOSS| |WIN%| |STREAK|"
    puts "=========================="
  end

  def self.display_teams(team) # a 5 thing array
    puts "#{team[0]}| #{team[1]} | #{team[2]} | #{team[3]} |#{team[4]}|"
  end

end
