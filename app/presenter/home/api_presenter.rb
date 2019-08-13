module Home
  class ApiPresenter < ::ApplicationPresenter
    def props
      Stream.all.where.not(archived: true).includes(:page).order('created_time DESC').take(10).map do |s|
        fb_id = s.fb_id.split('_')
        {
          page_id: fb_id.first,
          post_id: fb_id.last,
          title: s.story
        }
      end
    end
  end
end
