class FrontPensionController < ApplicationController
  def index
    @page = Page.find_by_label("about_pension")
  end

  def rooms
    @page = Page.find_by_label("rooms_pension")
  end

  def gallery
    @galleries = Gallery.where(:label => "pension")
  end

  def gallery_show
    @gallery = Gallery.find_by_id(params[:id])
  end

  def prices
    @prices = Price.find_all_by_label("pension")
  end
  
  def attractions
    @page = Page.find_by_label("attractions_pension")
  end
end
