# frozen_string_literal: true

require 'open-uri'
require 'nokogiri'

def scraper(url, slice_size, shift_size)
  html_file = URI.parse(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map(&:text)
  search_data.shift(shift_size)
  search_data.each_slice(slice_size).to_a
end
