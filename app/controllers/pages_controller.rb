class PagesController < ApplicationController
  def index
    @client = GooglePlaces::Client.new('AIzaSyDpF67gcwqJT5Lku1Aj-78unvq0OpKUNpA')
    @spots = @client.spots(-33.8670522, 151.1957362, :types => ['restaurant', 'food'])
  end
end
