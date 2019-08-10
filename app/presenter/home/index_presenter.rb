module Home
  class IndexPresenter < ::ApplicationPresenter
    def props
      Message.all.includes(:page).each do |m|
        {
          message: m.message,
          page_name: m.page.name
        }
      end.to_json
    end
  end
end
