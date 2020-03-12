require 'open-uri'
require 'nokogiri'


def scraper(url)

  products = []

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)


  html_doc.search('.new-product').each do |product|
    namer = product.search(".prod-caption a").first["title"].split(' - ')[0].sub("Gymshark","")
    brand = "Gymshark"
    colour = product.search(".prod-caption a").first["title"].split(' - ')[1]
    price = product.search(".prod-caption .prod-price").text.strip.sub("€","").to_i
    #photo = product.search(".athenaProductBlock_linkImage img").map {|tag| tag.attribute('src').value }
    suffix = product.search(".prod-image-wrap a").first["href"]
    link = "https://de.gymshark.com" + suffix
    products << {
      name: namer,
      link: link,
      colour: colour,
      price: price,
      brand: brand,
      #photo: photo
    }
  end
  return products
end










