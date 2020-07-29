#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'colorize'

html = 'https://medium.com/topic/programming'
doc = Nokogiri::HTML(URI.open(html))

require_relative '../lib/articles.rb'
require_relative '../lib/display.rb'
post_array = []

doc.css('div .fi').each do |programming_post|
  post = Articles.new(programming_post)
  post_array.push(post)
end

doc.css('section .fg').each do |programming_post|
  post = Articles.new(programming_post)
  post_array.push(post)
end

Display.print_all(post_array)
