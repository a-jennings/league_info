# frozen_string_literal: true

require_relative 'scraper'
require_relative 'view'

# Pulls information from scraper and displays information to terminal
class Controller
  def self.league(region)
    raw_data = scraper(region[:url], region[:slice_size], region[:shift_size])
    View.header(region[:region_name])
    puts ''
    raw_data.each do |team|
      View.display_teams(team, region[:streak_index])
    end
    puts ''
    puts '=========================='
  end

  def self.user_input
    View.program_view
  end
end
