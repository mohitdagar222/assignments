require 'nokogiri'
require 'open-uri'
# require 'net/http'
# require 'pry'

class Scraper
	def self.scrape_details
		url = "https://www.nytimes.com/"
		html = URI.open(url)
		# html = Net::HTTP.get(URI(url))
		doc = Nokogiri::HTML(html)
		titles = doc.css(".indicate-hover")
		# binding.pry
		titles.each do |title|
			puts title.text.strip
		end
		return titles
	end
	
end
Scraper.scrape_details
