require 'net/http'
module HeartRails
  module Station
    #フォルダのディレクトリをネストしているのでここもネスト関係を記載
    class << self #クラス化を実現している。例：user.name
       def list(name)
        uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getStations&line=#{name}"))
         http = Net::HTTP.new(uri.host, uri.port)
         res = http.start {
           http.get(uri.request_uri)
          }
          JSON.parse(res.body)
         end
      end
  end
end