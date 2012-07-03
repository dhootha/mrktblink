class MarketRecord
  include MongoMapper::Document
  key :market_name, String
  key :country, String
  key :market_data, String  
end
