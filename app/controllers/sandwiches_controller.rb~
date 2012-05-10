class SandwichesController < ApplicationController
  before_filter :must_be_logged_in, :only => [:create, :order]
  
  def order
    @sandwich = Sandwich.new 
    respond_to do |format|
      format.html # order.html.erb
      format.json { render json: @sandwich }
    end
  end

  def show
    @sandwich = Sandwich.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sandwich}
    end
  end

  def index
    @sandwiches = current_user.sandwiches
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sandwich}
    end
  end

  def create
    @sandwich = Sandwich.new(params[:sandwich])
    respond_to do |format|
      if @sandwich.save
        Emailer.order_email(@sandwich, current_user ).deliver
        format.html { redirect_to @sandwich, notice: 'Sandwich was successfully ordered.'}
        format.json { render json: @sandwich, status: :created, location: @sandwich }
      else
        format.html { render action: "new" }
        format.json { render json: @sandwich.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
