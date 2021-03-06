require 'net/http'
module HeartRails
  module Line
    class << self
      def list(prefecture)
        uri = URI.parse(URI.encode("http://express.heartrails.com/api/json?method=getLines&prefecture=#{prefecture}"))
        http = Net::HTTP.new(uri.host, uri.port)
        res = http.start {
          http.get(uri.request_uri)
        }
        JSON.parse(res.body)
      end
    end
  end
end