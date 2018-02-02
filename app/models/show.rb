class Show < ApplicationRecord

belongs_to :tour
def self.fetch_all_shows()
  response5 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=5',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response4 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=4',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response3 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=3',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response2 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=2',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
  response1 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=1',
  :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})

  @dead5 = JSON.parse(response5.body)
    @dead4 = JSON.parse(response4.body)
      @dead3 = JSON.parse(response3.body)
        @dead2 = JSON.parse(response2.body)
          @dead1 = JSON.parse(response1.body)

    @dead = @dead5["setlists"]['setlist'] + @dead4["setlists"]['setlist'] + @dead3["setlists"]['setlist'] + @dead2["setlists"]['setlist'] + @dead1["setlists"]['setlist']

    @shows = Array.new

    @dead.each do |show|
      @shows.push("#{show["venue"]['@name']} " + "#{show['@eventDate']}")
    end
      return @shows
  end

def self.api_2015_fetch
    @dead = Show.fetch_all_shows
      @shows = Array.new()
        @dead.each do |show|
            if show.include?('2015') == true
          @shows.push(show)
      end
    end
  return @shows
end


def self.api_2016_fetch
    @dead = Show.fetch_all_shows
      @shows = Array.new()
        @dead.each do |show|
            if show.include?('2016') == true
          @shows.push(show)
      end
    end
  return @shows
end


end
