# frozen_string_literal: true

require_relative 'controller'

# Enter current season league URL below here:

region_master = {
  eu_region: { region_name: 'EU', url: 'https://lol.fandom.com/wiki/LEC/2021_Season/Summer_Season',
               slice_size: 5, shift_size: 2, streak_index: 4 },
  na_region: { region_name: 'NA', url: 'https://lol.fandom.com/wiki/LCS/2021_Season/Summer_Season',
               slice_size: 7, shift_size: 4, streak_index: 6 },
  cn_region: { region_name: 'CN', url: 'https://lol.fandom.com/wiki/LPL/2021_Season/Summer_Season',
               slice_size: 8, shift_size: 5, streak_index: 7 },
  kr_region: { region_name: 'KR', url: 'https://lol.fandom.com/wiki/LCK/2021_Season/Summer_Season',
               slice_size: 8, shift_size: 3, streak_index: 7 }
}
running = true

while running
  user_input = Controller.user_input.to_i
  case user_input
  when 1
    Controller.league(region_master[:eu_region])
  when 2
    Controller.league(region_master[:na_region])
  when 3
    Controller.league(region_master[:cn_region])
  when 4
    Controller.league(region_master[:kr_region])
  when 5
    Controller.league(region_master[:eu_region])
    Controller.league(region_master[:na_region])
    Controller.league(region_master[:cn_region])
    Controller.league(region_master[:kr_region])
  when 6
    puts 'Good Bye!'
    running = false
  else
    puts 'Invalid command'
  end
end
