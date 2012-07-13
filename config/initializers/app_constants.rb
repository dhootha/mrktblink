APP_CONFIG_MARKETS = YAML::load(File.open("#{Rails.root}/config/yahoo_url.yml"))
APP_CONFIG_NEWSFEEDS = YAML::load(File.open("#{Rails.root}/config/news_feeds.yml"))