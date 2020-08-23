require 'net/http'
module HeartRails
  module Line
    class << self
      def list(prefecture)
        uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getLines&prefecture=#{prefecture}"))
        #仕様書を確認                                                                                    #が入ることでrubyに変換して変数を解読,prefectureはListの引数
         http = Net::HTTP.new(uri.host, uri.port)
         # URLを叩いている
         res = http.start {
           http.get(uri.request_uri)
          }
          JSON.parse(res.body)
          # bodyでレスポンスのボディ（ほしい値だけ取ってくる）
      end
    end
  end
end



# １.７.１２行目がネットに出てくる