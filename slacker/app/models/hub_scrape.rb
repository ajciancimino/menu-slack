class MeanScraper < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'

  html_data = open('https://usf.campusdish.com/en/LocationsAndMenus/TheHub').read
  nokogiri_object = Nokogiri::HTML(html_data)
  menu_elements = nokogiri_object.xpath('//div[@class="item__info"]/preceding-sibling::div/preceding-sibling::span/a[@class="viewItem"]')

  menu_elements.each do |menu_element|
    puts menu_element.text
    end
end

#Creating app... done, ⬢ afternoon-tor-70664
#https://afternoon-tor-70664.herokuapp.com/ | https://git.heroku.com/afternoon-tor-70664.git