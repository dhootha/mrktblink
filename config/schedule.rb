# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:


env :PATH, "/home/testmachine/.rvm/gems/ruby-1.9.3-p0/bin:/home/testmachine/.rvm/gems/ruby-1.9.3-p0@global/bin:/home/testmachine/.rvm/rubies/ruby-1.9.3-p0/bin:/home/testmachine/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/testmachine/.rvm/gems/ruby-1.9.3-p0/bin/bundle"
set :output, "/home/testmachine/Desktop/map_app/map_app_3july/map_app/log/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
 every 15.minutes do
   rake "store_data_to_redis", :environment => :development
 end

 every 1.hours do
   rake "store_news_feeds", :environment => :development
 end

# Learn more: http://github.com/javan/whenever
