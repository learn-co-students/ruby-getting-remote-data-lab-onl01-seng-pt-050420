require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  attr_accessor :get_requester
  
  def initialize(get_requester)
    @get_requester = get_requester
  end 
  
   URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
 
  def get_response_body
    
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
  get = JSON.parse(get_response_body)
  end
end 



