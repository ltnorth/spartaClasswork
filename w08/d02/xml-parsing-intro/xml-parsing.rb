require 'nokogiri'

doc = Nokogiri::XML(open('./menu.xml'))

# puts doc.search('price')

# doc.search('food').each do |food|
#   puts food.element_children[0].content
# end

puts doc.xpath('//food')