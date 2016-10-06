require 'insta_scrape'

def photoz
  urlarray = InstaScrape.long_scrape_user_posts('sweathesmallstuff', 1)
  urls = urlarray.map { |i| i.image }
  urls.each do |url|
    Photo.create(url: url)
  end
end

photoz
