class MapController < ApplicationController

  def index
    render :layout => "map"
  end

  def find_data
    market = 'Dow'
    #debugger
    begin
      FetchData.fetch_data_from_api(market)
    rescue
    end
  end
end