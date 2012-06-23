class FrontStableController < ApplicationController
  def index
    @page = Page.find_by_label("about_stable")
  end

  def infos
  end

  def offer
  end

  def gallery
  end

  def prices
  end

  def archives
  end
end
