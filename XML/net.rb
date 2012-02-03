require 'net/http'
    require 'uri'

    url = URI.parse('http://www.epaper.sakshi.com/index.html')
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.get('/index.html')
    }
    puts res.body

