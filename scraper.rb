require 'open-uri'
require 'nokogiri'

def scraper(url, slice_size, shift_size)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map { |td| td.text }
  search_data.shift(shift_size)
  search_data.each_slice(slice_size).to_a
end
