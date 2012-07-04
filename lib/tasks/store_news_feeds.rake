task :store_news_feeds => :environment do
  countries = []
  APP_CONFIG_MARKETS.each do |market|
    countries << market[1]["country"]    
  end
  countries.each do |country_name|
  	response = FetchNews.fetch_news_from_api(country_name)
  	if NewsFeedData.exist?(:country_name => country_name)
  	  news_feed = NewsFeedData.find_by_country_name(country_name)      
  	  news_feed.update_attributes(:news_feed_data => response)
  	else
  	  NewsFeedData.create(:country_name => country_name, :news_feed_data => response)
  	end    
  end
  puts "done"
end