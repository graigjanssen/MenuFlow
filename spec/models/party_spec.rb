require 'rails_helper'

RSpec.describe Party, type: :model do
  it 'can calculate the total bill' do
    party = Party.create({name: 'Smith', size: 4, balance: 0, paid: 'no'})
    item_1 = MenuItem.create({name: 'Flapjacks', price: 10})
    item_2 = MenuItem.create({name: 'Cheez Whiz', price: 5})
    item_3 = MenuItem.create({name: 'Day Old Bread', price: 7})
    Order.create({party_id: party.id, menu_item_id: item_1.id})
    Order.create({party_id: party.id, menu_item_id: item_2.id})
    Order.create({party_id: party.id, menu_item_id: item_3.id})

    actual = party.bill_total
    expected = 22

    expect(actual).to eq(expected)

  end
end
