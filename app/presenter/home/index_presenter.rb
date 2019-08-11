module Home
  class IndexPresenter < ::ApplicationPresenter
    def props
      Message.all.where.not(archived: true).includes(:page).order('id DESC').map do |m|
        data = {
          id: m.id,
          message: m.message,
          page_name: m.page.name,
          date: m.created_at.strftime("%F")
        }

        data[:image] = image(m) if m.url.present?
        data
      end.to_json
    end

    def image(message)
      {
        url: message.url
      }
    end
  end
end
