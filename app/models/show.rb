class Show < ApplicationRecord

belongs_to :tour

def self.api_2015_fetch
  response = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=5',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response1 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=4',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response2 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=3',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})

  @dead = JSON.parse(response.body)
  @dead1 = JSON.parse(response1.body)
  @dead2 = JSON.parse(response2.body)

    @shows = Array.new()
    @dead2["setlists"]['setlist'].each do |show|
        if show['@eventDate'].include?('2015') == true
      @shows.push("#{show["venue"]['@name']} " + "#{show['@eventDate']}")
    else
  end
end

@dead1["setlists"]['setlist'].each do |show|
    if show['@eventDate'].include?('2015') == true
  @shows.push("#{show["venue"]['@name']} " + "#{show['@eventDate']}")
else
end
end
@dead["setlists"]['setlist'].each do |show|
      if show['@eventDate'].include?('2015') == true
    @shows.push("#{show["venue"]['@name']} " + "#{show['@eventDate']}")
  else
end
end

return @shows

end

end
