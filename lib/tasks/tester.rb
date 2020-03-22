require_relative("scrape")
require "open-uri"

puts "deleting all fake products"

products = scraper("https://de.gymshark.com/collections/t-shirts-tops/mens")

file = products.first[:photo]

puts file


fileOpen = URI.open(file)

puts fileOpen

product = Product.new(name: products.first[:name])
product.photo.attach(io: fileOpen, filename: products.first[:name] + '.jpg', content_type: 'image/jpg')

puts product.photo.attached?
