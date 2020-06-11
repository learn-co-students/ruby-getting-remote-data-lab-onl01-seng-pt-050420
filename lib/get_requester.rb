require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
    
    def initialize(uri)
       uri = URI.parse(URL)
       response = Net::HTTP.get_response(uri)
       response.body
       
    end

    def get_response_body
       return response.body
        
    end
                
end