require 'net/http'
require 'uri'
class Scraper
	def self.scrap(url)
		doc = Nokogiri::HTML::DocumentFragment.parse(Net::HTTP.get(URI.parse(url)))
		doc.css('h1, h2, a').map(&:text).join(" ")
	end
end