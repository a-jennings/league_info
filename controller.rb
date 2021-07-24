require_relative 'scraper'
require_relative 'view'
# Enter current season league URL below here:

EU_SEASON = "https://lol.fandom.com/wiki/LEC/2021_Season/Summer_Season"
NA_SEASON = "https://lol.fandom.com/wiki/LCS/2021_Season/Summer_Season"
KR_SEASON = "https://lol.fandom.com/wiki/LPL/2021_Season/Summer_Season"
CN_SEASON = "https://lol.fandom.com/wiki/LCK/2021_Season/Summer_Season"


class Controller
  def initialize

  end

  def self.eu_league
    raw_data = scraper(EU_SEASON)
    View.header('EU')
    puts ""
    raw_data.each do |team|
      View.display_teams(team)
    end
    puts ""
    puts "=========================="
  end

  def self.na_league
    raw_data = scraper(NA_SEASON)
    View.header('NA')
    puts ""
    raw_data.each do |team|
      View.display_teams(team)
    end
    puts ""
    puts "=========================="
  end

  def self.kr_league
    raw_data = scraper(KR_SEASON)
    View.header('KR')
    puts ""
    raw_data.each do |team|
      View.display_teams(team)
    end
    puts ""
    puts "=========================="
  end

  def self.cn_league
    raw_data = scraper(CN_SEASON)
    View.header('CN')
    puts ""
    raw_data.each do |team|
      View.display_teams(team)
    end
    puts ""
    puts "=========================="
  end




end


# Controller does the CRUD methods. Maybe push to CSV? Remember to loop over all items in the array
