require_relative 'controller'

running = true

while running
  user_input = Controller.user_input.to_i
  case user_input
  when 1
    Controller.eu_league
  when 2
    Controller.na_league
  when 3
    Controller.cn_league
  when 4
    Controller.kr_league
  when 5
    Controller.eu_league
    Controller.na_league
    Controller.kr_league
    Controller.cn_league
  when 6
    puts "Good Bye!"
    running = false
  else
    puts "Invalid command"
  end

end



# Controller.eu_league
# Controller.na_league
# Controller.kr_league
# Controller.cn_league

# Formatting errors rule out the other major leagues for now
