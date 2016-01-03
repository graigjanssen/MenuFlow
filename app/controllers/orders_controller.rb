class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @party = Party.find(params[:party_id])
    @party_orders = @party.orders.all
    @order = Order.new

    @appetizers = MenuItem.where(category: 'Appetizers')
    @entrees = MenuItem.where(category: 'Entrees')
    @drinks = MenuItem.where(category: 'Drinks')
    @desserts = MenuItem.where(category: 'Desserts')
  end

  def create
    party = Party.find(params[:party_id])
    Order.create( order_params )
    redirect_to new_party_order_path(party)
  end

  def update
    order = Order.find(params[:id])
    order.update (order_params)
    party = Party.find(params[:party_id])
    if order.done == 'yes'
      redirect_to orders_path
    else
      redirect_to new_party_order_path(party)
    end
  end

  def destroy
    party = Party.find(params[:party_id])
    Order.destroy( params[:id] )
    redirect_to new_party_order_path(party)
  end

  private

  def order_params
    params.require(:order).permit(:party_id, :menu_item_id, :done, :comments)
  end

end
