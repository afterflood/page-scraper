require 'nokogiri'
require 'open-uri'

desc 'Seed Messages'
task seed_messages: :environment do
  # Fetch and parse HTML document
  Page.all.each do |page|
    messages = page.messages.pluck(:message)
    @doc = Nokogiri::HTML(open(page.url))
    @doc.css('div[data-testid="post_message"]').reverse.each do |link|
      next if link.content.nil?

      next if link.content.in? messages

      page.messages.create!(message: link.content)
    end
  end
end
