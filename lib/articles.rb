require 'nokogiri'
require 'open-uri'
require 'colorize'

class Articles
  attr_reader :post_title
  attr_reader :description
  attr_reader :time_read

  def initialize(raw_info)
    @post_title = raw_info.css('h3.ap').text
    @description = raw_info.css('div.ga .ch').text
    @time_read = raw_info.css('div.gw').text
    description_caps
    title_caps
  end

  private

  def title_caps
    title = @post_title.split(' ')
    title.each(&:capitalize!)
    @post_title = title.join(' ')
  end

  def description_caps
    descrip = @description.split(' ')
    descrip.each(&:capitalize!)
    @description = descrip.join(' ')
  end
end
