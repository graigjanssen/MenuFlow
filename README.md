# [MenuFlow](https://guarded-citadel-8449.herokuapp.com/)
Point of sale app for restaurants

## Summary

MenuFlow is a Ruby on Rails web application designed with mobile in mind that allows restaurant staff to manage the menu, guest parties and orders.  The clean interface makes it easy for waitstaff to quickly take and update orders and see customer receipts.

## User Stories

#### A restaurant manager can:

- Create an account using their email address and secure password
- Log in with credentials to access the restaurant's menu
- Create new items with name, category, description and price
- Edit and delete existing menu items
- Log out of their account

#### A restaurant server can:

- Create an entry for a new guest party with name and size
- Open a page for each party's orders.  There, items can be added and removed from each party's order list.
- Mark a guest party as paid, moving their entry to a separate section.
- Once marked as paid, can view a party's receipt, which includes suggested tip amounts.
- Delete a guest party and it's associated orders, either before or after marking as paid.

#### Kitchen staff (and everyone else) can:

- See all of the active orders
- See the time when each order was made with color coding that goes from green to red depending on how long the order has been active
- Mark orders as done, removing them from the kitchen list but not deleting them from record

## Technologies

- Secure login using BCrypt gem
- Four associated SQL tables for Users, Parties, Menu Items and Orders
- Javascript function with JQuery to produce time-dependent color coding in kitchen view
- Skeleton CSS framework for mobile friendly design
- Ruby on Rails button_to and form_for helpers for easy navigation and data creation
- Hidden form fields for adding menu items to orders, marking orders as done and marking parties as paid.

## Known Issues

- When updating a menu item as an admin, the edit page must be reloaded in order to function properly.  
