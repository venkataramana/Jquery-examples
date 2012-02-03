
	x=File.new("kvramana")
	puts x

File::open("kvramana") if File::exists?("kvramana")

require 'open-uri'

url = "http://www.google.com/search?q=ruby"

open(url) { |page| page_content = page.read( )

  links = page_content.scan(/<a class=l.*?href=\"(.*?)\"/).flatten

  links.each {|link| puts link}

}

