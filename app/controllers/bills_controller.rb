class BillsController < ApplicationController

def new
  create
end

def create
  @bill = Bill.new(false)
  if @bill.save
    redirect_to @bill
  else
    render 'index'
  end
end

def edit
  @bill = Bill.find(params[:id])
  redirect_to @bill
end

def show
  @bill = Bill.find(params[:id])
end

def index
  @bills = Bill.all
end

def getJSON
  @bill = Bill.find(params[:id])
  if @bill
  	render json: @bill, :include => :items
  else
    render status: :not_found
  end
end

def payBill
  @bill = Bill.find(params[:id])
  @bill.pagado = true
  if @bill.save
    render json: @bill, :include => :items
  else
    render status: :not_found
  end
end

end
