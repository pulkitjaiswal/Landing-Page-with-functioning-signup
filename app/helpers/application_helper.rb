module ApplicationHelper

  def format_num amount, precision_number = 0
    return '0.00' if amount.nil? || amount == 0.0
    is_negative = (amount < 0.0)
    amount = amount * (-1) if amount < 0
    currency_str = number_to_currency(amount, :precision => precision_number)
    currency_str = currency_str[1, currency_str.length]
    return currency_str if currency_str.to_f == 0.00
    return is_negative ? "-#{currency_str}" : currency_str
  end

end
