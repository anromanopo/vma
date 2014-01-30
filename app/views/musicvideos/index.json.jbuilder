json.array!(@musicvideos) do |musicvideo|
  json.extract! musicvideo, :id, :title, :artist
  json.url musicvideo_url(musicvideo, format: :json)
end
