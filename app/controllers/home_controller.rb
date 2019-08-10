class HomeController < ApplicationController

  def index
    presenter = ::Home::IndexPresenter.new(self)

    render json: presenter.props
  end
end
