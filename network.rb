require 'net/http'
require 'uri'

url = URI.parse("http://www.baidu.com")

http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
p doc.body