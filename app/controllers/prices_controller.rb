class PricesController < AdminController


  def prior_up
    @price = Price.find_by_id(params[:id])
    
    @price.prior_red 

    redirect_to prices_url
  end

  def prior_down
    @price = Price.find_by_id(params[:id])
    
    @price.prior_inc
    
    redirect_to prices_url
  end


  def index
    @prices = Price.order("label ASC, priority ASC").group_by(&:label)
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
    lower = Price.first(:conditions => "label = '#{@price.label}'", :order => "priority DESC")
    @price.priority = lower.priority + 1 if lower.present?

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
    prices_to_recount = Price.find(:all, :conditions => "label = '#{@price.label}' AND priority > #{@price.priority}")
    
    @price.destroy
    
    prices_to_recount.each do |p|
      p.update_attribute(:priority, p.priority - 1)
    end

    redirect_to prices_url
  end
end
