class Party < ActiveRecord::Base
  before_destroy :destroy_orders
  has_many :orders
  has_many :menu_items, through: :orders
  has_many :locations

  def bill_total
    total = 0
    orders = self.orders.all
    orders.each do |order|
      total += order.menu_item.price
    end
    total
  end

  def destroy_orders
    self.orders.destroy_all
  end

end
