require 'net/http'
require 'uri'
require 'json'

desc 'Seed Messages'
task seed_messages: :environment do

  url = "https://graph.facebook.com/v4.0"
  Page.all.each do |page|
    response = HTTParty.get("#{url}/#{page.page_uuid}/feed?access_token=#{page.token}")
    response_json = JSON.parse(response.body)
    response_json["data"].each do |link|
      next if Stream.where(fb_id: link["id"]).any?

      page.streams.create!(fb_id: link["id"], created_time: link["created_time"])
    end
  end
end
