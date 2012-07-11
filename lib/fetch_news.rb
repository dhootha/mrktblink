require 'net/http'
require 'net/https'
require 'uri'
require 'json'
module FetchNews
  
  def self.fetch_news_from_api(country)
    query = APP_CONFIG_NEWSFEEDS[country]['feed_url']    
  	begin
	    uri = URI.parse(query)
      connection = Net::HTTP.new(uri.host, 443)
      connection.use_ssl = true
      resp = connection.request_get(query)
	  rescue
	    return false
	  end
    response = resp.body
    return response
  end
end