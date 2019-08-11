require 'nokogiri'
require 'open-uri'

desc 'Seed Messages'
task seed_messages: :environment do
  # Fetch and parse HTML document
  Page.all.each do |page|
    messages = page.messages.pluck(:message)
    @doc = Nokogiri::HTML(open(page.url))
    @doc.css('div[data-testid="post_message"]').each do |link|
      next if link.in? messages

      page.messages.create!(message: link.content)
    end
  end
end
