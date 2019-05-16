require 'uri'
require 'net/http'
require 'json'

def request(add)
    url = URI(add)
    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["Postman-Token"] = '78f66e42-5b6c-4596-aab7-3f7e4407258d'

    response = http.request(request)
    JSON.parse response.read_body
end
