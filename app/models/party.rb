class Party < ActiveRecord::Base
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

end
