class Twitter < ActiveRecord::Base
  attr_accessible :content, :handle, :timestamp
end
