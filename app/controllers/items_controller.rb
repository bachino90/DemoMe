class ItemsController < ApplicationController

def create
  @bill = Bill.find(params[:bill_id])
  @item = @bill.items.create(params[:item].permit(:name, :price))
  redirect_to bill_path(@bill)
end

end
