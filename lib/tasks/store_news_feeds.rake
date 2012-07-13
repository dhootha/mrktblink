task :store_news_feeds => :environment do
  require 'rss'  
  APP_CONFIG_NEWSFEEDS.each do |country|
  	response = FetchNews.fetch_news_from_api(country[0])
  	if NewsFeedData.exist?(:country_name => country[0])
  	  news_feed = NewsFeedData.find_by_country_name(country[0])
  	  news_feed.update_attributes(:news_feed_data => response)
      puts(RSS::Parser.parse(response).items.first.title)
  	else
  	  NewsFeedData.create(:country_name => country[0], :news_feed_data => response)
  	end
  end
end