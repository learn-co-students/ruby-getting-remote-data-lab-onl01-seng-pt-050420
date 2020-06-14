require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
 
class GetRequester

    def initialize(url) 
        @@all = url
    end 

    def get_response_body
        get_requester = GetRequester.new(@@all)
        uri = URI.parse(@@all)
        response = Net::HTTP.get_response(uri)
        response.body
    end  

    def parse_json
        JSON.parse(get_response_body)
    end 
end