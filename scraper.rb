# Returns an array of 5 item arrays. Each a team pulled from LoL Wiki
require 'open-uri'
require 'nokogiri'

def eu_scraper(url)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map { |td| td.text }
  search_data.shift(2)
  raw_data = search_data.each_slice(5).to_a
  return raw_data
end

def na_scraper(url)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map { |td| td.text }
  search_data.shift(4)
  raw_data = search_data.each_slice(7).to_a
  return raw_data
end

def kr_scraper(url)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map { |td| td.text }
  search_data.shift(3)
  raw_data = search_data.each_slice(8).to_a
  return raw_data
end

def cn_scraper(url)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  table = html_doc.at('.standings')
  search_data = table.search('td').map { |td| td.text }
  search_data.shift(5)
  raw_data = search_data.each_slice(8).to_a
  return raw_data
end
