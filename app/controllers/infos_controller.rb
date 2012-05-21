# -*- encoding: utf-8 -*-
class InfosController < AdminController

  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = Info.new
  end

  def edit
    @info = Info.find(params[:id])
  end

  def create
    @info = Info.new(params[:info])

      if @info.save
        redirect_to infos_url, notice: 'News został dodany'
      else
        render action: "new"
      end
  end

  def update
    @info = Info.find(params[:id])

      if @info.update_attributes(params[:info])
        redirect_to infos_url, notice: "News został wyedytowany"
      else
        render action: "edit"
      end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy

    redirect_to infos_url
  end
end
