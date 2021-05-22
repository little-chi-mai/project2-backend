class PagesController < ApplicationController
  def index
    @client = GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
    @results = @client.spots_by_query(params[:term])
    render json:@results
  end

  def fetch_image
    @client = GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
    @spot = @client.spot(params[:reference])
    url = @spot.photos[0].fetch_url(600)
    render json:url
  end
end
