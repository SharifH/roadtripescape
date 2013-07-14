require 'nokogiri'
require 'open-uri'

url = "http://foopee.com/punk/the-list/by-date.1.html"
url_data = Nokogiri::HTML(open(url))

puts url_data