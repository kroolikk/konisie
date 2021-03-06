class FrontStationController < ApplicationController
  def index
    @page = Page.find_by_label("about_station")
  end

  def offer
    @page = Page.find_by_label("offer_station")
  end

  def gallery
    @galleries = Gallery.where(:label => "station")
  end

  def gallery_show
    @gallery = Gallery.find_by_id(params[:id])
  end

  def prices
    @prices = Price.where("label = 'station'").order("priority ASC")
  end
end
