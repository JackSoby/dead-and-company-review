class Api::V1::ShowsController < ApplicationController
  def index
response = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=1',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
@dead = JSON.parse(response.body)
@shows = Array.new()
@dead["setlists"]['setlist'].each do |show|
 @shows.push("#{show["venue"]['@name']} " + "#{show['@eventDate']}")
end

render json: @shows

  end
end
