# Write your code here
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester #define constant class


  def initialize(url) #define an 'initialize' method passing in a URL
    @url = url
  end

  # Setting up the GET request
  def get_response_body
    uri = URI.parse(@url) #parse the url being passed in with 'URI.parse'
    response = Net::HTTP.get_response(uri) # 'GET' the response of the uri with 'Net::HTTP.get_resonse' and pass in the uri variable
    response.body #return the 'body' from the 'response' variable
  end

  def parse_json #Method to parse JSON from 'get_response_body' method
    information = JSON.parse(self.get_response_body) #converts JSON returned from 'get_response_body' into Ruby data structures
    # Use an iterator on the 'information' variable and return the array (or hash, if preferrable)
    information.collect do |info|
      info
    end
  end

end
