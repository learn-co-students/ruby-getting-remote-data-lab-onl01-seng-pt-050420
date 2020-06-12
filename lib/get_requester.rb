# Write your code here
require 'net/http'
require 'uri'
require 'json'

class GetRequester
    attr_accessor :url
def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    res = Net::HTTP.get_response(uri)
    res.body
 end
  def parse_json
    JSON.parse(self.get_response_body)
 end

end
