module ApplicationHelper
  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find(session[:user_id])
    end
  end

  def authenticate!
    redirect_to log_in_path unless current_user
  end

  def display_currency(amount)
    amount = amount * 100
    if $currency == "EUR"
      euros = Money.new(amount, "USD").exchange_to("EUR")
      return euros.format
    elsif $currency == "USD"
      dollars = Money.new(amount, "USD")
      return dollars.format
    end
  end

end
