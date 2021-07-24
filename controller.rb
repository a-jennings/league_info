# frozen_string_literal: true

require_relative 'scraper'
require_relative 'view'

# Enter current season league URL below here:

EU_SEASON = 'https://lol.fandom.com/wiki/LEC/2021_Season/Summer_Season'
NA_SEASON = 'https://lol.fandom.com/wiki/LCS/2021_Season/Summer_Season'
CN_SEASON = 'https://lol.fandom.com/wiki/LPL/2021_Season/Summer_Season'
KR_SEASON = 'https://lol.fandom.com/wiki/LCK/2021_Season/Summer_Season'
EU_SLICE_SIZE = 5 # Slice and Shift for scraper, to pull correct information
NA_SLICE_SIZE = 7
CN_SLICE_SIZE = 8
KR_SLICE_SIZE = 8
EU_SHIFT_SIZE = 2
NA_SHIFT_SIZE = 4
CN_SHIFT_SIZE = 5
KR_SHIFT_SIZE = 3

# Pulls information from scraper and displays information to terminal
class Controller
  def self.eu_league
    raw_data = scraper(EU_SEASON, EU_SLICE_SIZE, EU_SHIFT_SIZE)
    View.header('EU')
    puts ''
    raw_data.each do |team|
      View.display_eu_teams(team)
    end
    puts ''
    puts '=========================='
  end

  def self.na_league
    raw_data = scraper(NA_SEASON, NA_SLICE_SIZE, NA_SHIFT_SIZE)
    View.header('NA')
    puts ''
    raw_data.each do |team|
      View.display_na_teams(team)
    end
    puts ''
    puts '=========================='
  end

  def self.kr_league
    raw_data = scraper(KR_SEASON, KR_SLICE_SIZE, KR_SHIFT_SIZE)
    View.header('KR')
    puts ''
    raw_data.each do |team|
      View.display_kr_teams(team)
    end
    puts ''
    puts '=========================='
  end

  def self.cn_league
    raw_data = scraper(CN_SEASON, CN_SLICE_SIZE, CN_SHIFT_SIZE)
    View.header('CN')
    puts ''
    raw_data.each do |team|
      View.display_cn_teams(team)
    end
    puts ''
    puts '=========================='
  end

  def self.user_input
    View.program_view
  end
end
