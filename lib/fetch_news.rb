require 'net/http'
require 'net/https'
require 'uri'
require 'json'
module FetchNews
  
  def self.fetch_news_from_api(country_name)  	
    query = "https://news.google.com/news/feeds?pz=1&cf=all&ned=us&hl=en&csep=false&sort=users&q=Equity+Markets,+#{country_name}&output=rss"
  	begin
	    uri = URI.parse(query)
      connection = Net::HTTP.new(uri.host, 443)
      connection.use_ssl = true
      resp = connection.request_get(uri.path)
	  rescue
	    return false
	  end
    response = resp.body
    return response
  end
end