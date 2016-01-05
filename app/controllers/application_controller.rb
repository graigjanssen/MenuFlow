class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper

  before_filter :set_exchange_rate

  def set_exchange_rate
    Money.add_rate("USD","EUR",0.92)
  end

  def toggle_currency
    if $currency == "USD"
      $currency = "EUR"
    elsif $currency == "EUR"
      $currency = "USD"
    else
      $currency = "USD"
    end
    redirect_to root_path
  end

end
