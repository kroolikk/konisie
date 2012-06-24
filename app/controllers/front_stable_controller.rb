class FrontStableController < ApplicationController
  def index
    @page = Page.find_by_label("about_stable")
  end

  def infos
    @infos = Info.order("created_at DESC").limit(5)
  end

  def infos_show
    @info = Info.find_by_id(params[:id])
  end

  def offer
    @page = Page.find_by_label("offer_stable")
  end

  def gallery
  end

  def prices
  end

  def archives
  end
end
