class ApplicationPresenter
  def initialize(view_context)
    @view = view_context
  end

  private

  attr_reader :view
end
