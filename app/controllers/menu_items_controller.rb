class MenuItemsController < ApplicationController

  def index
  end

  def create
    MenuItem.create( menu_item_params )
    redirect_to profile_path
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    item = MenuItem.find(params[:id])
    item.update( menu_item_params )
    redirect_to profile_path
  end

  def destroy
    authenticate!
    MenuItem.delete(params[:id])
    redirect_to profile_path
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:category, :name, :description, :price)
  end

end
