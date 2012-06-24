class PricesController < AdminController


  def index
    @prices = Price.order("label").group_by(&:label)
  end


  def show
    @price = Price.find(params[:id])
  end


  def new
    @price = Price.new
  end


  def edit
    @price = Price.find(params[:id])
  end


  def create
    @price = Price.new(params[:price])


      if @price.save
        redirect_to prices_url, notice: 'Dodano nowe ceny.'
      else
        render action: "new"
      end
  end

  
  def update
    @price = Price.find(params[:id])
    
    if @price.update_attributes(params[:price])
      redirect_to prices_url, notice: 'Wyedytowano ceny.'
    else
      render action: "edit"
    end
  end
  

  def destroy
    @price = Price.find(params[:id])
    @price.destroy
    
    redirect_to prices_url
  end
end
