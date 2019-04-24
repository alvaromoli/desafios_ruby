require 'uri'
require 'net/http'
require 'json'
require 'openssl' 

def request(add, api_key)
    url = URI(add+"&api_key="+api_key)
    http = Net::HTTP.new(url.host, url.port)

    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["Postman-Token"] = '78f66e42-5b6c-4596-aab7-3f7e4407258d'

    response = http.request(request)
    JSON.parse response.read_body
end

def photos_count(data)
    counts = Hash.new
    data.each do |x| 
        counts[x["camera"]["name"]] = 1 + counts[x["camera"]["name"]].to_i
    end
    return counts
end

def buid_web_page(data)
    html = "<html>\n<head>\nCuriosity\n</head>\n<body>\n<ul>\n"
    data.each do |photo|
        html += "\t<li><img src='" + photo["img_src"] + "'></li>\n"
    end
    html += "</ul>\n</body>\n</html>"

    File.write('index.html', html)
end

data = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "DEMO_KEY")
data = data["photos"]
buid_web_page(data)








