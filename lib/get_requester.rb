require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
    attr_accessor :url, :uri, :response

    def initialize(url)
        @url = url
        @uri = URI.parse(url)
        @response = Net::HTTP.get_response(uri)
    end
    
    def get_response_body
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end