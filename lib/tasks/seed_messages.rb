desc 'Seed Messages'
task seed_messages: :environment do
  require 'nokogiri'
  require 'open-uri'

  # Fetch and parse HTML document
  Page.all.each do |page|
    messages = page.messagspluck(:message)
    @doc = Nokogiri::HTML(open(page.url))
    @doc.css('div[data-testid="post_message"]').each do |link|
      next if link.in? messages
      page.messages.create!(message: link.content)
    end
  end
end
