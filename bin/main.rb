#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

html = 'https://medium.com/topic/programming'
doc = Nokogiri::HTML(URI.open(html))

doc.css('section .fg').each do |programming_post|
  puts programming_post.css('h3.ap').text
  puts ''
  puts programming_post.css('div.ga .ch').text
  puts ''
  puts programming_post.css('div.gw').text
end
