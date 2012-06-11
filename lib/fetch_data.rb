require 'net/http'
require 'net/https'
require 'uri'
require 'json'
module FetchData
  
  def self.fetch_data_from_api(market)
  	query = APP_CONFIG[market]['url']
  	begin
	  request = URI.parse(query)
	  request = Net::HTTP.get_response(request).body
	rescue
	  return false
	end
    response = JSON.parse(request)
  end
end