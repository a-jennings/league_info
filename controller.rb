require 'open-uri'
require 'nokogiri'

url = "https://lol.fandom.com/wiki/LEC/2021_Season/Summer_Season"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)
table = html_doc.at('.standings')
table.search('tr').each do |tr|
  puts tr.text if tr.text.match(/^[\d]/)
end

class Controller
  def initialize

  end




end


# Controller does the CRUD methods. Maybe push to CSV? Remember to loop over all items in the array
