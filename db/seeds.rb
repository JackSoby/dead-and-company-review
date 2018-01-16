response1 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=1',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
response2 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=1',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
response3 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=3',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
response4 = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=4',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
@dead1 = JSON.parse(response4.body)
@dead2 = JSON.parse(response3.body)
@dead3 = JSON.parse(response2.body)
@dead4 = JSON.parse(response1.body)
Tour.create(name: @dead1["setlists"]['setlist'].last["@tour"])
Tour.create(name: @dead2["setlists"]['setlist'].first["@tour"])
Tour.create(name: @dead4["setlists"]['setlist'].last["@tour"])
Tour.create(name: @dead3["setlists"]['setlist'].first["@tour"])
