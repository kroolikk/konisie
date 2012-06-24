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
    @galleries = Gallery.where(:label => "stable")
  end

  def gallery_show
    @gallery = Gallery.find_by_id(params[:id])
  end

  def prices
    @prices = Price.find_all_by_label("stable")
  end

  def archives
    infos = Info.order("created_at DESC")
    @infos = infos[5..infos.size] || []
  end

  def archives_show
    @info = Info.find_by_id(params[:id])
  end


end
