require 'net/http'
require 'net/https'
require 'uri'
require 'json'
module FetchData
  
  def self.fetch_data_from_api(market)
  	query = APP_CONFIG_MARKETS[market]['url']
  	begin
	    request = URI.parse(query)
	    request = Net::HTTP.get_response(request).body
	  rescue
	    return false
	  end
    response = request.to_json
    return response    
  end
end