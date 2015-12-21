class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @party = Party.find(params[:party_id])
    @menu_items = MenuItem.all
    @party_orders = @party.orders.all
    @order = Order.new
  end

  def create
    party = Party.find(params[:party_id])
    Order.create( order_params )
    redirect_to new_party_order_path(party)
  end

  def destroy
    party = Party.find(params[:party_id])
    Order.delete( params[:id] )
    redirect_to new_party_order_path(party)
  end

  private

  def order_params
    params.require(:order).permit(:party_id, :menu_item_id)
  end

end
