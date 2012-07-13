class NewsFeedData
  include MongoMapper::Document
  key :country_name, String
  key :news_feed_data, String  
end
