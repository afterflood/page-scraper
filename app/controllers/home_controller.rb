class HomeController < ApplicationController

  def index
    presenter = ::Home::IndexPresenter.new(self)

    render json: presenter.props
  end

  def api
    presenter = ::Home::ApiPresenter.new(self)

    render json: presenter.props
  end

  def full
    presenter = ::Home::FullPresenter.new(self)

    render json: presenter.props
  end
end
