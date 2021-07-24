class LeagueTeam
  def initialize(name, ranking, region)
    # Team Name
    # Current Ranking - Pulled from web scrape
    # Region = EU, NA, CN, KR
    @name = name
    @ranking = ranking
    @region = region
  end
end
