class MeanScraper < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'

  html_data = open('https://usf.campusdish.com/en/LocationsAndMenus/JuniperDining').read
  nokogiri_object = Nokogiri::HTML(html_data)
# date_elements = nokogiri_object.xpath('//span[@class="date"][@id="dailyDate"]')
  menu_elements = nokogiri_object.xpath('//div[@class="item__info"]/preceding-sibling::div/preceding-sibling::span')

# date_elements.each do |date_element|
#   puts date_element.text

  menu_elements.each do |menu_element|
    puts menu_element.text
    end

end
